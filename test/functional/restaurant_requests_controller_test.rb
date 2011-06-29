require 'test_helper'

class RestaurantRequestsControllerTest < ActionController::TestCase
  setup do
    @restaurant_request = restaurant_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_request" do
    assert_difference('RestaurantRequest.count') do
      post :create, :restaurant_request => @restaurant_request.attributes
    end

    assert_redirected_to restaurant_request_path(assigns(:restaurant_request))
  end

  test "should show restaurant_request" do
    get :show, :id => @restaurant_request.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @restaurant_request.to_param
    assert_response :success
  end

  test "should update restaurant_request" do
    put :update, :id => @restaurant_request.to_param, :restaurant_request => @restaurant_request.attributes
    assert_redirected_to restaurant_request_path(assigns(:restaurant_request))
  end

  test "should destroy restaurant_request" do
    assert_difference('RestaurantRequest.count', -1) do
      delete :destroy, :id => @restaurant_request.to_param
    end

    assert_redirected_to restaurant_requests_path
  end
end
