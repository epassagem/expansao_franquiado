require 'test_helper'

class ProContratosControllerTest < ActionController::TestCase
  setup do
    @pro_contrato = pro_contratos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pro_contratos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pro_contrato" do
    assert_difference('ProContrato.count') do
      post :create, pro_contrato: { arquivo: @pro_contrato.arquivo, estatus: @pro_contrato.estatus, interessado_id: @pro_contrato.interessado_id }
    end

    assert_redirected_to pro_contrato_path(assigns(:pro_contrato))
  end

  test "should show pro_contrato" do
    get :show, id: @pro_contrato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pro_contrato
    assert_response :success
  end

  test "should update pro_contrato" do
    patch :update, id: @pro_contrato, pro_contrato: { arquivo: @pro_contrato.arquivo, estatus: @pro_contrato.estatus, interessado_id: @pro_contrato.interessado_id }
    assert_redirected_to pro_contrato_path(assigns(:pro_contrato))
  end

  test "should destroy pro_contrato" do
    assert_difference('ProContrato.count', -1) do
      delete :destroy, id: @pro_contrato
    end

    assert_redirected_to pro_contratos_path
  end
end
