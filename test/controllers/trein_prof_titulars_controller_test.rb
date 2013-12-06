require 'test_helper'

class TreinProfTitularsControllerTest < ActionController::TestCase
  setup do
    @trein_prof_titular = trein_prof_titulars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trein_prof_titulars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trein_prof_titular" do
    assert_difference('TreinProfTitular.count') do
      post :create, trein_prof_titular: { data: @trein_prof_titular.data, estatus: @trein_prof_titular.estatus, interessado_id: @trein_prof_titular.interessado_id }
    end

    assert_redirected_to trein_prof_titular_path(assigns(:trein_prof_titular))
  end

  test "should show trein_prof_titular" do
    get :show, id: @trein_prof_titular
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trein_prof_titular
    assert_response :success
  end

  test "should update trein_prof_titular" do
    patch :update, id: @trein_prof_titular, trein_prof_titular: { data: @trein_prof_titular.data, estatus: @trein_prof_titular.estatus, interessado_id: @trein_prof_titular.interessado_id }
    assert_redirected_to trein_prof_titular_path(assigns(:trein_prof_titular))
  end

  test "should destroy trein_prof_titular" do
    assert_difference('TreinProfTitular.count', -1) do
      delete :destroy, id: @trein_prof_titular
    end

    assert_redirected_to trein_prof_titulars_path
  end
end
