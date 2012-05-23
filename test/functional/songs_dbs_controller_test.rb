require 'test_helper'

class SongsDbsControllerTest < ActionController::TestCase
  setup do
    @songs_db = songs_dbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:songs_dbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create songs_db" do
    assert_difference('SongsDb.count') do
      post :create, songs_db: { artist: @songs_db.artist, comments: @songs_db.comments, title: @songs_db.title }
    end

    assert_redirected_to songs_db_path(assigns(:songs_db))
  end

  test "should show songs_db" do
    get :show, id: @songs_db
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @songs_db
    assert_response :success
  end

  test "should update songs_db" do
    put :update, id: @songs_db, songs_db: { artist: @songs_db.artist, comments: @songs_db.comments, title: @songs_db.title }
    assert_redirected_to songs_db_path(assigns(:songs_db))
  end

  test "should destroy songs_db" do
    assert_difference('SongsDb.count', -1) do
      delete :destroy, id: @songs_db
    end

    assert_redirected_to songs_dbs_path
  end
end
