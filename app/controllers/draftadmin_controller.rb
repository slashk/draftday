class DraftadminController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    #@pick_pages, @picks = paginate :picks, :per_page => 25
    @picks = Pick.find_all
    @players = Player.find_all
    @teams = Team.find_all
  end

  def show
    @pick = Pick.find(params[:id])
    @players = Player.find_all
    @teams = Team.find_all
  end

  def new
    @pick = Pick.new
  end

  def create
    # I think we need to validate foreign keys here
    # make sure playerid is a number and a foreign key
    # make sure team id is a foreign key and a number
    @pick = Pick.new(params[:pick])
    if @pick.save
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
      redirect_to :action => 'show', :id => @pick
    else
      render :action => 'edit'
    end
  end

  def destroy
    Pick.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
  def setDraft
    # this method creates a draft by creating picks with team_id but without player_id
    # need a double loop along with all the data from Teams and an alogoritm for draft type (probably :draftType )
    # params[:draftType] would be "1" for straight thru (1,2,3,1,2,3), "2" would be alternating (1,2,3,3,2,1)
    # check if table is populated, if so flash message
    # get :draftType
    # get count of teams from teams table
    # get :numberOfRounds
    # set up iterator. We need to take params[:numberOfRounds] x find.count[:team_id] and then iterate through them in draft order
    #drop_table("picks")
    
    #numberOfTeams = params[:teamCount]
    numberOfRounds = 10
    #numberOfTeams = Team.find_all
    numberOfTeams = 9
    #draftType = params[:draftType]
    draftType = 1
    numberOfPicks = numberOfRounds * numberOfTeams
    1.upto(numberOfRounds) {| i |  
      1.upto(numberOfTeams) { |n| 
        # determine if alternate draft is in use
        if draftType == 1
          # determine if round is even or odd
          if i.modulo(2) == 1
            # odd rounds are the lottery order
            teamOnThePodium = n
          else
            # even rounds are reverse order
            teamOnThePodium = numberOfTeams - n + 1
          end
        else
          teamOnThePodium = n
        end
        @pick = Pick.new(:pick_number => numberOfTeams * (i - 1) + n, :team_id => teamOnThePodium)
        @pick.save!
      }
    }
    flash[:notice] = 'Draft created successfully.'
    redirect_to :action => 'list'
    
    # inside iterator, create new pick with pick_number and team_id (don't use create method)
    # flash success
    # dump onto pickadmin screen
  end
  
  def scrollDraft
    @picks = Pick.find(:all, :order => "pick_number DESC")
    @players = Player.find_all
    @teams = Team.find_all
    render :partial => "search"
  end
  
  
end