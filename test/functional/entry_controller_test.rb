require File.dirname(__FILE__) + '/../test_helper'
require 'entry_controller'

# Re-raise errors caught by the controller.
class EntryController; def rescue_action(e) raise e end; end

class EntryControllerTest < Test::Unit::TestCase
  def setup
    @controller = EntryController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_should_create_pick
    old_count = Pick.count
    put :new, {:player_id => '1', :pick_num => '1', :team_id => '1'}
    assert_equal old_count+1, Pick.count
  end
  
  def test_shouldnt_create_pick_due_to_invalid_player
    assert true
  end
  
end
