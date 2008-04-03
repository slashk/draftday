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

  fixtures :picks
  fixtures :users
  fixtures :players
  fixtures :teams
  
  # Replace this with your real tests.
  def test_should_get_new_entry_page
    #old_count = Pick.count
    get :new
    #assert_equal old_count+1, Pick.count
    #assert_equal old_count, @pick.pick_number
    assert_response :success
  end
  
  
  
  def test_shouldnt_create_pick_due_to_invalid_player
    assert true
  end
  
end
