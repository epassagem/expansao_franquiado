require 'test_helper'

class DocFiscaisControllerTest < ActionController::TestCase
  setup do
    @doc_fiscai = doc_fiscais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doc_fiscais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doc_fiscai" do
    assert_difference('DocFiscai.count') do
      post :create, doc_fiscai: { bens_imob: @doc_fiscai.bens_imob, certidao_casamento: @doc_fiscai.certidao_casamento, comprovante_resid: @doc_fiscai.comprovante_resid, cpf: @doc_fiscai.cpf, fpc: @doc_fiscai.fpc, imposto_renda_pf: @doc_fiscai.imposto_renda_pf, imposto_renda_pj: @doc_fiscai.imposto_renda_pj, rg: @doc_fiscai.rg, serasa: @doc_fiscai.serasa, socio_bens_imob: @doc_fiscai.socio_bens_imob, socio_certidao_casamento: @doc_fiscai.socio_certidao_casamento, socio_comprovante_resid: @doc_fiscai.socio_comprovante_resid, socio_cpf: @doc_fiscai.socio_cpf, socio_fpc: @doc_fiscai.socio_fpc, socio_imposto_renda_pf: @doc_fiscai.socio_imposto_renda_pf, socio_imposto_renda_pj: @doc_fiscai.socio_imposto_renda_pj, socio_rg: @doc_fiscai.socio_rg, socio_serasa: @doc_fiscai.socio_serasa }
    end

    assert_redirected_to doc_fiscai_path(assigns(:doc_fiscai))
  end

  test "should show doc_fiscai" do
    get :show, id: @doc_fiscai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doc_fiscai
    assert_response :success
  end

  test "should update doc_fiscai" do
    patch :update, id: @doc_fiscai, doc_fiscai: { bens_imob: @doc_fiscai.bens_imob, certidao_casamento: @doc_fiscai.certidao_casamento, comprovante_resid: @doc_fiscai.comprovante_resid, cpf: @doc_fiscai.cpf, fpc: @doc_fiscai.fpc, imposto_renda_pf: @doc_fiscai.imposto_renda_pf, imposto_renda_pj: @doc_fiscai.imposto_renda_pj, rg: @doc_fiscai.rg, serasa: @doc_fiscai.serasa, socio_bens_imob: @doc_fiscai.socio_bens_imob, socio_certidao_casamento: @doc_fiscai.socio_certidao_casamento, socio_comprovante_resid: @doc_fiscai.socio_comprovante_resid, socio_cpf: @doc_fiscai.socio_cpf, socio_fpc: @doc_fiscai.socio_fpc, socio_imposto_renda_pf: @doc_fiscai.socio_imposto_renda_pf, socio_imposto_renda_pj: @doc_fiscai.socio_imposto_renda_pj, socio_rg: @doc_fiscai.socio_rg, socio_serasa: @doc_fiscai.socio_serasa }
    assert_redirected_to doc_fiscai_path(assigns(:doc_fiscai))
  end

  test "should destroy doc_fiscai" do
    assert_difference('DocFiscai.count', -1) do
      delete :destroy, id: @doc_fiscai
    end

    assert_redirected_to doc_fiscais_path
  end
end
