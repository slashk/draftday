# Filters added to this controller will be run for all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
class ApplicationController < ActionController::Base
  
  # setup this "before_filter" to add the utf-8 content type to our HTML document
  # without this filter, you will garble all the spanish player's names
  # see details at http://wiki.rubyonrails.com/rails/pages/HowToUseUnicodeStrings
  #  before_filter :set_charset
  #  def set_charset
  #    headers["Content-Type"] = "text/html; charset=utf-8" 
  #  end
  
  # Pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_DraftDay_session_id'
  
  def whose_pick(p, draft_type)
    league_size = Team.count
    case draft_type
    when 'reverse'
      # this one is tough because it goes 1,2,3,3,2,1
      draftee = p % (2 * league_size)
      if draftee > league_size
        draftee = league_size - (draftee % league_size) + 1
      elsif draftee == 0 
        draftee = 1
      end
    when 'straight'
      # this one is easier because it goes 1,2,3,1,2,3
      draftee = p % league_size
    end
    return draftee
  end
    
end