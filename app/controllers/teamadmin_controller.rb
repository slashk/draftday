class TeamadminController < ApplicationController
    def list
    @teams = Team.find(:all)
  end
  
  def edit
    @team = Team.find(params[:id])
  end
  
    def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:team])
    if @team.save
      flash[:notice] = 'Team was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end
  
    def update
    @team = Team.find(params[:id])
    if @team.update_attributes(params[:team])
      flash[:notice] = 'Team was successfully updated.'
      redirect_to :action => 'list'
    else
      render :action => 'edit'
    end
  end
  
end