class PlayeradminController < ApplicationController
  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
    :redirect_to => { :action => :list }

  
  def index
    #list
    #@teams = Team.find(:all)
    render :action => 'live'
  end

  def live
    @teams = Team.find(:all, :order => "draft_order asc")
    render :action => 'live'
  end
  
  def list
    @teams = Team.find(:all)
    # Figure out sort order first (assuming that top sort button pushed)
    if params[:sortOrder].nil?
	    params[:sortOrder] = "rank asc"
    end
    # If they clicked a fielding position, add these where clauses to the SQL
    if params[:fieldPosition].nil?
      sortCons = 'picks.id IS NULL'    	
    else
	    sortCons = 'picks.id IS NULL AND players.pos like "%' + params[:fieldPosition] + '%"'
    end
    # If they clicked a team position, add these where clauses to the SQL
    # This tosses out the pos selection (and vice-versa)
    if params[:team].nil?
    else
	    sortCons = 'picks.id IS NULL AND players.team like "%' + params[:team] + '%"'
    end
    # Find the players by sortCons (position or team) then order them by softOrder (rank, statistic or header)
    # Left join is necessary to find all players NOT drafted
    # :include clause is necessary to reduce DB calls and make sure that primary key (player.id) is retrieved
    @players = Player.find(:all, 
      :order => params[:sortOrder],
      :conditions => sortCons,
      :include => [:pick],
      :joins => 'LEFT JOIN picks ON players.id=picks.id')
    render 
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      flash[:notice] = 'Player was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(params[:player])
      flash[:notice] = 'Player was successfully updated.'
      redirect_to :action => 'show', :id => @player
    else
      render :action => 'edit'
    end
  end

  def destroy
    Player.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
  # add live search via RJS/AJAX for player searches
  def live_search
    @phrase = params[:searchtext]
    @searchphrase = "%" + @phrase + "%"
    @players = Player.find(:all,
      :conditions => [ "picks.id IS NULL AND players.player LIKE ?", @searchphrase],
      :include => [:pick],
      :joins => 'LEFT JOIN picks ON players.id=picks.player_id')
    render :partial => "search"
  end
  
  def searchbyfranchise
    # find all the picks made by this user and then access them through through picks
    @players = Player.find(:all, :include => [:pick], :conditions => ["players.id=picks.player_id and picks.team_id = ?", params[:team]])
    render :partial => "search"
  end

  def search
    # this will be the catchall ajax search for players not drafted
    # find out type of search and then set parameters (:sortOrder, :sortConditions)
	  params[:sortOrder] = "rank asc" if params[:sortOrder].nil?
    @sortConditions = 'picks.id IS NULL '
    params[:sortType] = "normal" if params[:sortType].nil?
    params[:limits] = "100" if params[:limits].nil?
    # start with the base picks.id is NULL string (make only undrafted players show), then add others
    unless params[:fieldPosition].nil?
      case params[:fieldPosition]
      when "ALL"
        # don't add anything to sort conditions
      when "BATTERS"
        # add not pitchers clause
        @sortConditions = @sortConditions + 'AND players.pos not like "%P%"'
      when "PITCHERS"
        # add pitchers clause
        @sortConditions = @sortConditions + 'AND players.pos like "%P%"'
      else
        @sortConditions = @sortConditions + ' AND players.pos like "%' + params[:fieldPosition] + '%"'
      end
    end
    # add in the team condition to the sort
  	@sortConditions = @sortConditions + ' AND players.team like "%' + params[:team] + '%"' unless params[:team].nil?
    # make the query
    @players = Player.find(:all, 
      :order => params[:sortOrder], 
      :conditions => @sortConditions,  
      :include => [:pick],
      :limit => params[:limits],
      :joins => 'LEFT JOIN picks ON players.id=picks.player_id')
    render :partial => "search" 
  end
  
  def summary
    @picks = Pick.find(:all, :include => [:player, :team], :conditions => 'player_id > 0')
    @HR = Hash.new
    @R = Hash.new
    @SB = Hash.new
    @RBI = Hash.new
    @W = Hash.new
    @K = Hash.new
    @SV = Hash.new
    for pick in @picks
      @HR[pick.team.short_name] = @HR.fetch(pick.team.short_name,0) + pick.player.pHR unless pick.player.pHR.nil?
      @R[pick.team.short_name] =  @R.fetch(pick.team.short_name,0) + pick.player.pR unless pick.player.pR.nil?
      @SB[pick.team.short_name] = @SB.fetch(pick.team.short_name,0) + pick.player.pSB unless pick.player.pSB.nil?
      @RBI[pick.team.short_name] = @RBI.fetch(pick.team.short_name,0) + pick.player.pRBI unless pick.player.pRBI.nil?
      @W[pick.team.short_name] = @W.fetch(pick.team.short_name,0) + pick.player.pW unless pick.player.pW.nil?
      @K[pick.team.short_name] = @K.fetch(pick.team.short_name,0) + pick.player.pK unless pick.player.pK.nil?
      @SV[pick.team.short_name] = @SV.fetch(pick.team.short_name,0) + pick.player.pSV unless pick.player.pSV.nil?
    end  
  end
  
end