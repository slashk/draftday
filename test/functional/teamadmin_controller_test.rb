require File.dirname(__FILE__) + '/../test_helper'
require 'teamadmin_controller'

# Re-raise errors caught by the controller.
class TeamadminController; def rescue_action(e) raise e end; end

class TeamadminControllerTest < Test::Unit::TestCase
  def setup
    @controller = TeamadminController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
