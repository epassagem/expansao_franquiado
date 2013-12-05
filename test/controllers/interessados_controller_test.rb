require 'test_helper'

class InteressadosControllerTest < ActionController::TestCase
  setup do
    @interessado = interessados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interessados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interessado" do
    assert_difference('Interessado.count') do
      post :create, interessado: { cpf: @interessado.cpf, data_nasc: @interessado.data_nasc, dispon_integral: @interessado.dispon_integral, email: @interessado.email, estado_civil: @interessado.estado_civil, manifesto_pos: @interessado.manifesto_pos, nome: @interessado.nome, quem_sera_admin: @interessado.quem_sera_admin, regime_bens: @interessado.regime_bens, renda: @interessado.renda, resumo_prof: @interessado.resumo_prof, rg: @interessado.rg, sera_admin: @interessado.sera_admin }
    end

    assert_redirected_to interessado_path(assigns(:interessado))
  end

  test "should show interessado" do
    get :show, id: @interessado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interessado
    assert_response :success
  end

  test "should update interessado" do
    patch :update, id: @interessado, interessado: { cpf: @interessado.cpf, data_nasc: @interessado.data_nasc, dispon_integral: @interessado.dispon_integral, email: @interessado.email, estado_civil: @interessado.estado_civil, manifesto_pos: @interessado.manifesto_pos, nome: @interessado.nome, quem_sera_admin: @interessado.quem_sera_admin, regime_bens: @interessado.regime_bens, renda: @interessado.renda, resumo_prof: @interessado.resumo_prof, rg: @interessado.rg, sera_admin: @interessado.sera_admin }
    assert_redirected_to interessado_path(assigns(:interessado))
  end

  test "should destroy interessado" do
    assert_difference('Interessado.count', -1) do
      delete :destroy, id: @interessado
    end

    assert_redirected_to interessados_path
  end
end
