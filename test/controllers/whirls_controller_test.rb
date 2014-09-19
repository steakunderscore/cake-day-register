require 'test_helper'

class WhirlsControllerTest < ActionController::TestCase
  setup do
    @whirl = whirls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whirls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whirl" do
    assert_difference('Whirl.count') do
      post :create, whirl: { baker_id: @whirl.baker_id, priority: @whirl.priority }
    end

    assert_redirected_to whirl_path(assigns(:whirl))
  end

  test "should show whirl" do
    get :show, id: @whirl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whirl
    assert_response :success
  end

  test "should update whirl" do
    patch :update, id: @whirl, whirl: { baker_id: @whirl.baker_id, priority: @whirl.priority }
    assert_redirected_to whirl_path(assigns(:whirl))
  end

  test "should destroy whirl" do
    assert_difference('Whirl.count', -1) do
      delete :destroy, id: @whirl
    end

    assert_redirected_to whirls_path
  end
end
