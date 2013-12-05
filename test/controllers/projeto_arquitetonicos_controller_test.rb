require 'test_helper'

class ProjetoArquitetonicosControllerTest < ActionController::TestCase
  setup do
    @projeto_arquitetonico = projeto_arquitetonicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projeto_arquitetonicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projeto_arquitetonico" do
    assert_difference('ProjetoArquitetonico.count') do
      post :create, projeto_arquitetonico: { status: @projeto_arquitetonico.status }
    end

    assert_redirected_to projeto_arquitetonico_path(assigns(:projeto_arquitetonico))
  end

  test "should show projeto_arquitetonico" do
    get :show, id: @projeto_arquitetonico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projeto_arquitetonico
    assert_response :success
  end

  test "should update projeto_arquitetonico" do
    patch :update, id: @projeto_arquitetonico, projeto_arquitetonico: { status: @projeto_arquitetonico.status }
    assert_redirected_to projeto_arquitetonico_path(assigns(:projeto_arquitetonico))
  end

  test "should destroy projeto_arquitetonico" do
    assert_difference('ProjetoArquitetonico.count', -1) do
      delete :destroy, id: @projeto_arquitetonico
    end

    assert_redirected_to projeto_arquitetonicos_path
  end
end
