require 'test_helper'

class AprovEstabelecimentosControllerTest < ActionController::TestCase
  setup do
    @aprov_estabelecimento = aprov_estabelecimentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aprov_estabelecimentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aprov_estabelecimento" do
    assert_difference('AprovEstabelecimento.count') do
      post :create, aprov_estabelecimento: { estatus: @aprov_estabelecimento.estatus, interessado_id: @aprov_estabelecimento.interessado_id }
    end

    assert_redirected_to aprov_estabelecimento_path(assigns(:aprov_estabelecimento))
  end

  test "should show aprov_estabelecimento" do
    get :show, id: @aprov_estabelecimento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aprov_estabelecimento
    assert_response :success
  end

  test "should update aprov_estabelecimento" do
    patch :update, id: @aprov_estabelecimento, aprov_estabelecimento: { estatus: @aprov_estabelecimento.estatus, interessado_id: @aprov_estabelecimento.interessado_id }
    assert_redirected_to aprov_estabelecimento_path(assigns(:aprov_estabelecimento))
  end

  test "should destroy aprov_estabelecimento" do
    assert_difference('AprovEstabelecimento.count', -1) do
      delete :destroy, id: @aprov_estabelecimento
    end

    assert_redirected_to aprov_estabelecimentos_path
  end
end
