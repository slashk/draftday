require File.dirname(__FILE__) + '/../test_helper'
require 'playeradmin_controller'

# Re-raise errors caught by the controller.
class PlayeradminController; def rescue_action(e) raise e end; end

class PlayeradminControllerTest < Test::Unit::TestCase
  fixtures :players

  def setup
    @controller = PlayeradminController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_index
    get :index
    assert_response :success
    assert_template 'live'
  end

  def test_list
    get :list

    assert_response :success
    assert_template 'list'

    assert_not_nil assigns(:players)
  end

  def test_show
    get :show, :id => 1

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:player)
    assert assigns(:player).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:player)
  end

  def test_create
    num_players = Player.count

    post :create, :player => {:player => "Ken Pepple", :pos => "3B", :yahoo_ref => "6631"}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_players + 1, Player.count
  end

  def test_edit
    get :edit, :id => 1

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:player)
    assert assigns(:player).valid?
  end

  def test_update
    post :update, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => 1
  end

  def test_destroy
    assert_not_nil Player.find(1)

    post :destroy, :id => 1
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      Player.find(1)
    }
  end
end
