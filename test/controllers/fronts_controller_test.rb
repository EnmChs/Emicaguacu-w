require 'test_helper'

class FrontsControllerTest < ActionController::TestCase
  setup do
    @front = fronts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fronts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create front" do
    assert_difference('Front.count') do
      post :create, front: { blog: @front.blog, directorio: @front.directorio, gallery: @front.gallery, index: @front.index, somos: @front.somos, ubicacion: @front.ubicacion }
    end

    assert_redirected_to front_path(assigns(:front))
  end

  test "should show front" do
    get :show, id: @front
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @front
    assert_response :success
  end

  test "should update front" do
    patch :update, id: @front, front: { blog: @front.blog, directorio: @front.directorio, gallery: @front.gallery, index: @front.index, somos: @front.somos, ubicacion: @front.ubicacion }
    assert_redirected_to front_path(assigns(:front))
  end

  test "should destroy front" do
    assert_difference('Front.count', -1) do
      delete :destroy, id: @front
    end

    assert_redirected_to fronts_path
  end
end
