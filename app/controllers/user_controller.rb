class UserController < ApplicationController

 # scaffold :user

  def login
    if session[:user] = User.authenticate(params[:user][:login], params[:user][:password])
    end
    redirect_to :controller => "playeradmin", :action => "live"
  end
  
  def logout
    reset_session
    redirect_to :controller => 'playeradmin', :action => 'live'
  end
  
  def list
    @users = User.find(:all, :include => :team)
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
    def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = 'User was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end
  
     def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = 'Team was successfully updated.'
      redirect_to :action => 'list'
    else
      render :action => 'edit'
    end
  end
  
end