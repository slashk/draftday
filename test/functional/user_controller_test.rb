require File.dirname(__FILE__) + '/../test_helper'
require 'user_controller'

# Re-raise errors caught by the controller.
class UserController; def rescue_action(e) raise e end; end

class UserControllerTest < Test::Unit::TestCase
  
  fixtures :users
  
  def setup
    @controller = UserController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_should_get_list
    get :list
    assert_response :success
  end
  
    def test_should_edit_user
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_user
    # write a test here
    assert true
  end


end
