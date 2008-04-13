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
  
  # find out whose pick it is right now
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
  
  def find_round(p)
    t = Team.count
    (p/t+1).to_i
  end
  
  # return the last player chosen
  def find_last_player_chosen
    p = Pick.find(:first, :include => [:player, :team], :order => "pick_number DESC")
    #return "#{p.pick_number}. #{p.player.player} (#{p.player.pos} - #{p.team.short_name})"
  end
  
  # find the team who is currently on the clock
  def find_team_on_clock
    pick_number = Pick.count
    t = Team.find_by_draft_order(whose_pick((pick_number+1), DRAFT))
    #return t.short_name
  end
  
  # find the time of the last pick 
  # usually used in the view to calculate how long someone is taking to pick
  # use like this <%= time_ago_in_words(find_last_pick_time(), true) %>
  def find_last_pick_time
    last_pick_time = Pick.find(:first, :order => "pick_number desc").created_at
  end
  
end