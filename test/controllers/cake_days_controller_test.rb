require 'test_helper'

class CakeDaysControllerTest < ActionController::TestCase
  setup do
    @cake_day = cake_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cake_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cake_day" do
    assert_difference('CakeDay.count') do
      post :create, cake_day: { baker_id: @cake_day.baker_id, date: @cake_day.date }
    end

    assert_redirected_to cake_day_path(assigns(:cake_day))
  end

  test "should show cake_day" do
    get :show, id: @cake_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cake_day
    assert_response :success
  end

  test "should update cake_day" do
    patch :update, id: @cake_day, cake_day: { baker_id: @cake_day.baker_id, date: @cake_day.date }
    assert_redirected_to cake_day_path(assigns(:cake_day))
  end

  test "should destroy cake_day" do
    assert_difference('CakeDay.count', -1) do
      delete :destroy, id: @cake_day
    end

    assert_redirected_to cake_days_path
  end
end
