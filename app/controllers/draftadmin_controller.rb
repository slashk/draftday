class DraftadminController < ApplicationController
  in_place_edit_for :pick, :player_id
  
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
    :redirect_to => { :action => :list }

  def list
    #@pick_pages, @picks = paginate :picks, :per_page => 25
    @picks = Pick.find(:all, :include => [:player, :team], :order => 'pick_number')
  end

  def show
    @pick = Pick.find(params[:id])
  end

  def new
    @pick = Pick.new
  end

  def create
    # I think we need to validate foreign keys here
    # make sure playerid is in the players model
    # need to wrap @validPlayer = Player.find(params[:pick][:player_id]) with some kind of try ... catch routine
    @pick = Pick.new(params[:pick])
    if Player.exists?(@pick.player_id) && @pick.save
      flash[:notice] = 'Pick was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
    #end
  end

  def edit
    @pick = Pick.find(params[:id])
  end

  def update
    @pick = Pick.find(params[:id])
    if @pick.update_attributes(params[:pick])
      flash[:notice] = 'Pick was successfully updated.'
      redirect_to :action => 'list'
    else
      render :action => 'edit'
    end
  end

  def destroy
    Pick.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def live
    @picks = Pick.find(:all, :include => [:player, :team], :order => "pick_number DESC")
    @teams = Team.find(:all, :order => "draft_order asc")
    pick_number = Pick.count + 1
    @drafter = Team.find_by_draft_order(whose_pick(pick_number, DRAFT))
    @on_deck = Team.find_by_draft_order(whose_pick((pick_number+1), DRAFT))
    #    logger.debug "on_deck"
    #    logger.debug @on_deck
    @last_pick_time = Pick.find(:first, :order => "pick_number desc").created_at
  end
  
  def scrolldraft
    # find the number of teams, then find the number of players chosen
    # show only the drafted players plus the next (number of teams) rounds
    #    @futurepicks = Team.count
    #    @currentdraftee = Pick.count(:conditions => "player_id > 0")
    #    @currentdraftee = @futurepicks + @currentdraftee
    @picks = Pick.find(:all, :include => [:player, :team], :order => "pick_number DESC")
    # instead of usual render :partial => "search" use the scriptalicious AJAXy way
    render :partial => "search"
  end
  
  def scrollteam
    @teams = Team.find(:all, :order => "draft_order asc")
    pick_number = Pick.count + 1
    @drafter = Team.find_by_draft_order(whose_pick(pick_number, DRAFT))
    @on_deck = Team.find_by_draft_order(whose_pick((pick_number+1), DRAFT))
    # figure out time since last pick
    @last_pick_time = Pick.find(:first, :order => "pick_number desc").created_at
    # instead of usual render :partial => "search" use the scriptalicious AJAXy way
    # uses the view/live.js.rjs
    render :partial => "scrollteam"
  end
  
  def set_pick_player_id
    @pick = Pick.find(params[:id])
    previous_name = @pick.player_id
    @pick.player_id = params[:value]
    # need to error check here. can't pick player already chosen.
    @pick.player_id = previous_name unless @pick.save
    currentLine = "draftee#{@pick.pick_number}"
    render :update do |page| 
      page.replace currentLine, :partial => "set_pick_player_id", :locals => {:pick => @pick}
      page.visual_effect :highlight, currentLine, :duration => 2
    end
  end
  
end