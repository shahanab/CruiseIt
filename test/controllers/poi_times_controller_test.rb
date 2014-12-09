require 'test_helper'

class PoiTimesControllerTest < ActionController::TestCase
  setup do
    @poi_time = poi_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poi_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poi_time" do
    assert_difference('PoiTime.count') do
      post :create, poi_time: { end_time: @poi_time.end_time, itinerary_id: @poi_time.itinerary_id, poi_id: @poi_time.poi_id, start_time: @poi_time.start_time }
    end

    assert_redirected_to poi_time_path(assigns(:poi_time))
  end

  test "should show poi_time" do
    get :show, id: @poi_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poi_time
    assert_response :success
  end

  test "should update poi_time" do
    patch :update, id: @poi_time, poi_time: { end_time: @poi_time.end_time, itinerary_id: @poi_time.itinerary_id, poi_id: @poi_time.poi_id, start_time: @poi_time.start_time }
    assert_redirected_to poi_time_path(assigns(:poi_time))
  end

  test "should destroy poi_time" do
    assert_difference('PoiTime.count', -1) do
      delete :destroy, id: @poi_time
    end

    assert_redirected_to poi_times_path
  end
end
