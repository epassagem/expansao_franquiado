require 'test_helper'

class RedacaosControllerTest < ActionController::TestCase
  setup do
    @redacao = redacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:redacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create redacao" do
    assert_difference('Redacao.count') do
      post :create, redacao: { arquivo: @redacao.arquivo, interessado_id: @redacao.interessado_id, status: @redacao.status }
    end

    assert_redirected_to redacao_path(assigns(:redacao))
  end

  test "should show redacao" do
    get :show, id: @redacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @redacao
    assert_response :success
  end

  test "should update redacao" do
    patch :update, id: @redacao, redacao: { arquivo: @redacao.arquivo, interessado_id: @redacao.interessado_id, status: @redacao.status }
    assert_redirected_to redacao_path(assigns(:redacao))
  end

  test "should destroy redacao" do
    assert_difference('Redacao.count', -1) do
      delete :destroy, id: @redacao
    end

    assert_redirected_to redacaos_path
  end
end
