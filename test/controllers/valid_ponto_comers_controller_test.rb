require 'test_helper'

class ValidPontoComersControllerTest < ActionController::TestCase
  setup do
    @valid_ponto_comer = valid_ponto_comers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valid_ponto_comers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valid_ponto_comer" do
    assert_difference('ValidPontoComer.count') do
      post :create, valid_ponto_comer: { estatus: @valid_ponto_comer.estatus, interessado_id: @valid_ponto_comer.interessado_id }
    end

    assert_redirected_to valid_ponto_comer_path(assigns(:valid_ponto_comer))
  end

  test "should show valid_ponto_comer" do
    get :show, id: @valid_ponto_comer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @valid_ponto_comer
    assert_response :success
  end

  test "should update valid_ponto_comer" do
    patch :update, id: @valid_ponto_comer, valid_ponto_comer: { estatus: @valid_ponto_comer.estatus, interessado_id: @valid_ponto_comer.interessado_id }
    assert_redirected_to valid_ponto_comer_path(assigns(:valid_ponto_comer))
  end

  test "should destroy valid_ponto_comer" do
    assert_difference('ValidPontoComer.count', -1) do
      delete :destroy, id: @valid_ponto_comer
    end

    assert_redirected_to valid_ponto_comers_path
  end
end
