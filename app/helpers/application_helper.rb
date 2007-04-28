# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def is_admin?
    # check to see if session[:user] is an admin
    return true if session[:user].role == "admin"
    return false
  end
  
  def logged_in?
    return true if session[:user]
    return false
  end
  
  def ba(average)
    # we assume that you will get a float that looks like this 0.342
    # need to convert from float to string then substring it
    return average[1..3]
  end
  
end