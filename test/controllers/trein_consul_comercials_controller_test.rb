require 'test_helper'

class TreinConsulComercialsControllerTest < ActionController::TestCase
  setup do
    @trein_consul_comercial = trein_consul_comercials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trein_consul_comercials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trein_consul_comercial" do
    assert_difference('TreinConsulComercial.count') do
      post :create, trein_consul_comercial: { data: @trein_consul_comercial.data, estatus: @trein_consul_comercial.estatus, interessado_id: @trein_consul_comercial.interessado_id }
    end

    assert_redirected_to trein_consul_comercial_path(assigns(:trein_consul_comercial))
  end

  test "should show trein_consul_comercial" do
    get :show, id: @trein_consul_comercial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trein_consul_comercial
    assert_response :success
  end

  test "should update trein_consul_comercial" do
    patch :update, id: @trein_consul_comercial, trein_consul_comercial: { data: @trein_consul_comercial.data, estatus: @trein_consul_comercial.estatus, interessado_id: @trein_consul_comercial.interessado_id }
    assert_redirected_to trein_consul_comercial_path(assigns(:trein_consul_comercial))
  end

  test "should destroy trein_consul_comercial" do
    assert_difference('TreinConsulComercial.count', -1) do
      delete :destroy, id: @trein_consul_comercial
    end

    assert_redirected_to trein_consul_comercials_path
  end
end
