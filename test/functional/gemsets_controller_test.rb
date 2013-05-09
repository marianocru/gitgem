require 'test_helper'

class GemsetsControllerTest < ActionController::TestCase
  setup do
    @gemset = gemsets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gemsets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gemset" do
    assert_difference('Gemset.count') do
      post :create, gemset: { nombre: @gemset.nombre }
    end

    assert_redirected_to gemset_path(assigns(:gemset))
  end

  test "should show gemset" do
    get :show, id: @gemset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gemset
    assert_response :success
  end

  test "should update gemset" do
    put :update, id: @gemset, gemset: { nombre: @gemset.nombre }
    assert_redirected_to gemset_path(assigns(:gemset))
  end

  test "should destroy gemset" do
    assert_difference('Gemset.count', -1) do
      delete :destroy, id: @gemset
    end

    assert_redirected_to gemsets_path
  end
end
