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
  end

  def show
    @pick = Pick.find(params[:id])
  end

  def new
    @pick = Pick.new
  end

  def create
    # I think we need to validate foreign keys here
    # make sure playerid is a number and a foreign key
    # need to wrap @validPlayer = Player.find(params[:pick][:player_id]) with some kind of try ... catch routine
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
    # how do we check for duplicate draft choices ?
    #@dummy=params[:pick]
    #@draftees = Pick.count(:conditions => ["player_id=?", @dummy.player_id ]) 
    #if @draftees > 0
      #flash[:notice] = 'Player already drafted.'
      #redirect_to :action => 'list'
    if @pick.update_attributes(params[:pick])
      flash[:notice] = 'Pick was successfully updated.'
      #redirect_to :action => 'show', :id => @pick
      redirect_to :action => 'list'
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
    
    # find current pick and add to it
    currentDraftSlot = Pick.count
    #numberOfTeams = params[:teamCount]
    numberOfRounds = 18
    #numberOfTeams = Team.find_all
    numberOfTeams = Team.count
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
        @pick = Pick.new(:pick_number => numberOfTeams * (i - 1) + n + (currentDraftSlot+1), :team_id => teamOnThePodium, :player_id => 0)
        @pick.save!
      }
    }
    # flash success
    # dump onto pickadmin screen
    flash[:notice] = 'Draft created successfully.'
    redirect_to :action => 'list'    
  end
  
  def scrollDraft
    # find the number of teams, then find the number of players chosen
    # show only the drafted players plus the next (number of teams) rounds
    @futurepicks = Team.count
    @currentdraftee = Pick.count(:conditions => "player_id > 0")
    @currentdraftee = @futurepicks + @currentdraftee
    @picks = Pick.find(:all, :order => "pick_number DESC", :conditions => ["pick_number < ?", @currentdraftee])
    render :partial => "search"
  end
  
  
end