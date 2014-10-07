require 'test_helper'

class TraxesControllerTest < ActionController::TestCase
  setup do
    @trax = traxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trax" do
    assert_difference('Trax.count') do
      post :create, trax: { description: @trax.description, nom: @trax.nom }
    end

    assert_redirected_to trax_path(assigns(:trax))
  end

  test "should show trax" do
    get :show, id: @trax
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trax
    assert_response :success
  end

  test "should update trax" do
    patch :update, id: @trax, trax: { description: @trax.description, nom: @trax.nom }
    assert_redirected_to trax_path(assigns(:trax))
  end

  test "should destroy trax" do
    assert_difference('Trax.count', -1) do
      delete :destroy, id: @trax
    end

    assert_redirected_to traxes_path
  end
end
