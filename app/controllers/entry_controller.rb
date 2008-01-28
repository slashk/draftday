class EntryController < ApplicationController

  def new
    # create a new unpopulated form 
    @pick = Pick.new
    @pick.pick_number = Pick.count + 1
    @drafter = Team.find_by_draft_order(whose_pick(@pick.pick_number, DRAFT))
    @pick.team_id = @drafter.id
    @teams = Team.find(:all)
    @round = (@pick.pick_number/@teams.size).to_i
  end

  def create
    @pick = Pick.new(params[:pick])
    @pick.save ?  flash[:notice] = 'Player was successfully created.' :  flash[:error] = 'Error in saving your pick'
    redirect_to :action => 'new'
  end
end
