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
  
end