require 'test_helper'

class DocPontoComersControllerTest < ActionController::TestCase
  setup do
    @doc_ponto_comer = doc_ponto_comers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doc_ponto_comers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doc_ponto_comer" do
    assert_difference('DocPontoComer.count') do
      post :create, doc_ponto_comer: { arquivo: @doc_ponto_comer.arquivo, estatus: @doc_ponto_comer.estatus, interessado_id: @doc_ponto_comer.interessado_id, tipo: @doc_ponto_comer.tipo }
    end

    assert_redirected_to doc_ponto_comer_path(assigns(:doc_ponto_comer))
  end

  test "should show doc_ponto_comer" do
    get :show, id: @doc_ponto_comer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doc_ponto_comer
    assert_response :success
  end

  test "should update doc_ponto_comer" do
    patch :update, id: @doc_ponto_comer, doc_ponto_comer: { arquivo: @doc_ponto_comer.arquivo, estatus: @doc_ponto_comer.estatus, interessado_id: @doc_ponto_comer.interessado_id, tipo: @doc_ponto_comer.tipo }
    assert_redirected_to doc_ponto_comer_path(assigns(:doc_ponto_comer))
  end

  test "should destroy doc_ponto_comer" do
    assert_difference('DocPontoComer.count', -1) do
      delete :destroy, id: @doc_ponto_comer
    end

    assert_redirected_to doc_ponto_comers_path
  end
end
