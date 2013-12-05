require 'test_helper'

class CronogramasControllerTest < ActionController::TestCase
  setup do
    @cronograma = cronogramas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cronogramas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cronograma" do
    assert_difference('Cronograma.count') do
      post :create, cronograma: { interessado_id: @cronograma.interessado_id, status: @cronograma.status }
    end

    assert_redirected_to cronograma_path(assigns(:cronograma))
  end

  test "should show cronograma" do
    get :show, id: @cronograma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cronograma
    assert_response :success
  end

  test "should update cronograma" do
    patch :update, id: @cronograma, cronograma: { interessado_id: @cronograma.interessado_id, status: @cronograma.status }
    assert_redirected_to cronograma_path(assigns(:cronograma))
  end

  test "should destroy cronograma" do
    assert_difference('Cronograma.count', -1) do
      delete :destroy, id: @cronograma
    end

    assert_redirected_to cronogramas_path
  end
end
