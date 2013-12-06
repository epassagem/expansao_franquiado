require 'test_helper'

class TreinCoordPedagsControllerTest < ActionController::TestCase
  setup do
    @trein_coord_pedag = trein_coord_pedags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trein_coord_pedags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trein_coord_pedag" do
    assert_difference('TreinCoordPedag.count') do
      post :create, trein_coord_pedag: { data: @trein_coord_pedag.data, estatus: @trein_coord_pedag.estatus, interessado_id: @trein_coord_pedag.interessado_id }
    end

    assert_redirected_to trein_coord_pedag_path(assigns(:trein_coord_pedag))
  end

  test "should show trein_coord_pedag" do
    get :show, id: @trein_coord_pedag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trein_coord_pedag
    assert_response :success
  end

  test "should update trein_coord_pedag" do
    patch :update, id: @trein_coord_pedag, trein_coord_pedag: { data: @trein_coord_pedag.data, estatus: @trein_coord_pedag.estatus, interessado_id: @trein_coord_pedag.interessado_id }
    assert_redirected_to trein_coord_pedag_path(assigns(:trein_coord_pedag))
  end

  test "should destroy trein_coord_pedag" do
    assert_difference('TreinCoordPedag.count', -1) do
      delete :destroy, id: @trein_coord_pedag
    end

    assert_redirected_to trein_coord_pedags_path
  end
end
