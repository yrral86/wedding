require 'test_helper'

class SongRequestsControllerTest < ActionController::TestCase
  setup do
    @song_request = song_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:song_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create song_request" do
    assert_difference('SongRequest.count') do
      post :create, song_request: { artist: @song_request.artist, name: @song_request.name, requested_by: @song_request.requested_by }
    end

    assert_redirected_to song_request_path(assigns(:song_request))
  end

  test "should show song_request" do
    get :show, id: @song_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @song_request
    assert_response :success
  end

  test "should update song_request" do
    patch :update, id: @song_request, song_request: { artist: @song_request.artist, name: @song_request.name, requested_by: @song_request.requested_by }
    assert_redirected_to song_request_path(assigns(:song_request))
  end

  test "should destroy song_request" do
    assert_difference('SongRequest.count', -1) do
      delete :destroy, id: @song_request
    end

    assert_redirected_to song_requests_path
  end
end
