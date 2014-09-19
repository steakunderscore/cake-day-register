require 'test_helper'

class CakesControllerTest < ActionController::TestCase
  setup do
    @cake = cakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cake" do
    assert_difference('Cake.count') do
      post :create, cake: { baker_id: @cake.baker_id, name: @cake.name }
    end

    assert_redirected_to cake_path(assigns(:cake))
  end

  test "should show cake" do
    get :show, id: @cake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cake
    assert_response :success
  end

  test "should update cake" do
    patch :update, id: @cake, cake: { baker_id: @cake.baker_id, name: @cake.name }
    assert_redirected_to cake_path(assigns(:cake))
  end

  test "should destroy cake" do
    assert_difference('Cake.count', -1) do
      delete :destroy, id: @cake
    end

    assert_redirected_to cakes_path
  end
end
