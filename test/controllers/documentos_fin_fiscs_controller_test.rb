require 'test_helper'

class DocumentosFinFiscsControllerTest < ActionController::TestCase
  setup do
    @documentos_fin_fisc = documentos_fin_fiscs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documentos_fin_fiscs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documentos_fin_fisc" do
    assert_difference('DocumentosFinFisc.count') do
      post :create, documentos_fin_fisc: { arquivo: @documentos_fin_fisc.arquivo, interessado_id: @documentos_fin_fisc.interessado_id, nome_doc: @documentos_fin_fisc.nome_doc }
    end

    assert_redirected_to documentos_fin_fisc_path(assigns(:documentos_fin_fisc))
  end

  test "should show documentos_fin_fisc" do
    get :show, id: @documentos_fin_fisc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documentos_fin_fisc
    assert_response :success
  end

  test "should update documentos_fin_fisc" do
    patch :update, id: @documentos_fin_fisc, documentos_fin_fisc: { arquivo: @documentos_fin_fisc.arquivo, interessado_id: @documentos_fin_fisc.interessado_id, nome_doc: @documentos_fin_fisc.nome_doc }
    assert_redirected_to documentos_fin_fisc_path(assigns(:documentos_fin_fisc))
  end

  test "should destroy documentos_fin_fisc" do
    assert_difference('DocumentosFinFisc.count', -1) do
      delete :destroy, id: @documentos_fin_fisc
    end

    assert_redirected_to documentos_fin_fiscs_path
  end
end
