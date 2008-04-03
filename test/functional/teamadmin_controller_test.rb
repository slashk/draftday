require File.dirname(__FILE__) + '/../test_helper'
require 'teamadmin_controller'

# Re-raise errors caught by the controller.
class TeamadminController; def rescue_action(e) raise e end; end

class TeamadminControllerTest < Test::Unit::TestCase
  fixtures :teams
  
  def setup
    @controller = TeamadminController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_should_get_list
    get :list
    assert_response :success
  end
  
  def test_should_edit_team
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_team
    # write a test here
    assert true
  end
    
end