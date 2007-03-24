# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def is_admin?
    # check to see if session[:user] is an admin
    return true
  end
  
  def logged_in?
    return true if session[:user]
    return false
  end
  
end