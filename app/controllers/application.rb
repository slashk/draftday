# Filters added to this controller will be run for all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
class ApplicationController < ActionController::Base
  
  # setup this "before_filter" to add the utf-8 content type to our HTML document
  # without this filter, you will garble all the spanish player's names
  # see details at http://wiki.rubyonrails.com/rails/pages/HowToUseUnicodeStrings
  before_filter :set_charset
  def set_charset
    headers["Content-Type"] = "text/html; charset=utf-8" 
  end
  
  # Pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_DraftDay_session_id'
  
end