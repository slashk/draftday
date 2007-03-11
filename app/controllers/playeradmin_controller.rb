class PlayeradminController < ApplicationController
  # $Id$
  def index
    #list
    #@teams = Team.find(:all)
    render :action => 'live'
  end

  def live
    @teams = Team.find(:all, :order => "draft_order asc")
    render :action => 'live'
  end
  
  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }



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
      @phrase = request.raw_post || request.query_string
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
    case params[:sortType]
      when "normal"
        # start with the base picks.id is NULL string (make only undrafted players show), then add others
    	  @sortConditions = @sortConditions + ' AND players.pos like "%' + params[:fieldPosition] + '%"' unless params[:fieldPosition].nil?
    	  @sortConditions = @sortConditions + ' AND players.team like "%' + params[:team] + '%"' unless params[:team].nil?
    	when "batters"
        @sortConditions = @sortConditions + 'AND players.pos not like "%P%"'
    end
    # make the query
    @players = Player.find(:all, 
      :order => params[:sortOrder], 
      :conditions => @sortConditions,  
      :include => [:pick],
      :joins => 'LEFT JOIN picks ON players.id=picks.player_id')
    render :partial => "search"    
  end
  
end