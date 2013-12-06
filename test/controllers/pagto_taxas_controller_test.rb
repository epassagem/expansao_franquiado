require 'test_helper'

class PagtoTaxasControllerTest < ActionController::TestCase
  setup do
    @pagto_taxa = pagto_taxas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pagto_taxas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pagto_taxa" do
    assert_difference('PagtoTaxa.count') do
      post :create, pagto_taxa: { estatus: @pagto_taxa.estatus, interessado_id: @pagto_taxa.interessado_id }
    end

    assert_redirected_to pagto_taxa_path(assigns(:pagto_taxa))
  end

  test "should show pagto_taxa" do
    get :show, id: @pagto_taxa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pagto_taxa
    assert_response :success
  end

  test "should update pagto_taxa" do
    patch :update, id: @pagto_taxa, pagto_taxa: { estatus: @pagto_taxa.estatus, interessado_id: @pagto_taxa.interessado_id }
    assert_redirected_to pagto_taxa_path(assigns(:pagto_taxa))
  end

  test "should destroy pagto_taxa" do
    assert_difference('PagtoTaxa.count', -1) do
      delete :destroy, id: @pagto_taxa
    end

    assert_redirected_to pagto_taxas_path
  end
end
