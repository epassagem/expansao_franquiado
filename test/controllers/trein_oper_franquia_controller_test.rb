require 'test_helper'

class TreinOperFranquiaControllerTest < ActionController::TestCase
  setup do
    @trein_oper_franquium = trein_oper_franquia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trein_oper_franquia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trein_oper_franquium" do
    assert_difference('TreinOperFranquium.count') do
      post :create, trein_oper_franquium: { data: @trein_oper_franquium.data, estatus: @trein_oper_franquium.estatus, interessado_id: @trein_oper_franquium.interessado_id }
    end

    assert_redirected_to trein_oper_franquium_path(assigns(:trein_oper_franquium))
  end

  test "should show trein_oper_franquium" do
    get :show, id: @trein_oper_franquium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trein_oper_franquium
    assert_response :success
  end

  test "should update trein_oper_franquium" do
    patch :update, id: @trein_oper_franquium, trein_oper_franquium: { data: @trein_oper_franquium.data, estatus: @trein_oper_franquium.estatus, interessado_id: @trein_oper_franquium.interessado_id }
    assert_redirected_to trein_oper_franquium_path(assigns(:trein_oper_franquium))
  end

  test "should destroy trein_oper_franquium" do
    assert_difference('TreinOperFranquium.count', -1) do
      delete :destroy, id: @trein_oper_franquium
    end

    assert_redirected_to trein_oper_franquia_path
  end
end
