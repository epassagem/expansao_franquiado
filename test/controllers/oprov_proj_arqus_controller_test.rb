require 'test_helper'

class OprovProjArqusControllerTest < ActionController::TestCase
  setup do
    @oprov_proj_arqu = oprov_proj_arqus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oprov_proj_arqus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oprov_proj_arqu" do
    assert_difference('OprovProjArqu.count') do
      post :create, oprov_proj_arqu: { estatus: @oprov_proj_arqu.estatus, interessado_id: @oprov_proj_arqu.interessado_id }
    end

    assert_redirected_to oprov_proj_arqu_path(assigns(:oprov_proj_arqu))
  end

  test "should show oprov_proj_arqu" do
    get :show, id: @oprov_proj_arqu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oprov_proj_arqu
    assert_response :success
  end

  test "should update oprov_proj_arqu" do
    patch :update, id: @oprov_proj_arqu, oprov_proj_arqu: { estatus: @oprov_proj_arqu.estatus, interessado_id: @oprov_proj_arqu.interessado_id }
    assert_redirected_to oprov_proj_arqu_path(assigns(:oprov_proj_arqu))
  end

  test "should destroy oprov_proj_arqu" do
    assert_difference('OprovProjArqu.count', -1) do
      delete :destroy, id: @oprov_proj_arqu
    end

    assert_redirected_to oprov_proj_arqus_path
  end
end
