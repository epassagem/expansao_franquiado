class InteressadosController < ApplicationController
  before_action :set_interessado, only: [:show, :edit, :update, :destroy]

  # GET /interessados
  # GET /interessados.json
  def index
    @interessados = Interessado.all
    @interessados = Interessado.paginate(:page => params[:page], :per_page => 20)
  end

  # GET /interessados/1
  # GET /interessados/1.json
  def show
   
  if @interessado.cartum.empty?
    @cartum = @interessado.cartum.build
    @cartum.save   
  end
  
  if @interessado.doc_fiscais.empty?
    @doc_fiscais = @interessado.doc_fiscais.build
    @doc_fiscais.save   
  end
    
       

  end

  # GET /interessados/new
  def new
    @interessado = Interessado.new

  end

  # GET /interessados/1/edit
  def edit

  end

  # POST /interessados
  # POST /interessados.json
  def create
    @interessado = Interessado.new(interessado_params)
    @cartum = @interessado.cartum.build
    
    
    @pagto_taxas = @interessado.pagto_taxas.build
    @pro_contratos = @interessado.pro_contratos.build
    @valid_ponto_comers = @interessado.valid_ponto_comers.build
    @doc_ponto_comers = @interessado.doc_ponto_comers.build
    @aprov_estabelecimentos = @interessado.aprov_estabelecimentos.build
    @oprov_proj_arqus = @interessado.oprov_proj_arqus.build
    @trein_consul_comercials = @interessado.trein_consul_comercials.build
    @trein_coord_pedags = @interessado.trein_coord_pedags.build
    @trein_oper_franquia = @interessado.trein_oper_franquia.build
    @trein_prof_titulars = @interessado.trein_prof_titulars.build

    @projeto_arquitetonicos = @interessado.projeto_arquitetonicos.build
    @cronogramas = @interessado.cronogramas.build
    @redacaos = @interessado.redacaos.build
    @planilhas = @interessado.planilhas.build
    @doc_fiscais = @interessado.doc_fiscais.build
    
    
    
    respond_to do |format|
      if @interessado.save
        format.html { redirect_to @interessado, notice: 'Interessado was successfully created.' }
        format.json { render action: 'show', status: :created, location: @interessado }
      else
        format.html { render action: 'new' }
        format.json { render json: @interessado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interessados/1
  # PATCH/PUT /interessados/1.json
  def update
    respond_to do |format|
      if @interessado.update(interessado_params)
         

        format.html { redirect_to @interessado, notice: 'Interessado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @interessado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interessados/1
  # DELETE /interessados/1.json
  def destroy
    @interessado.destroy
    respond_to do |format|
      format.html { redirect_to interessados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interessado
      @interessado = Interessado.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interessado_params
      params.require(:interessado).permit(:nome, :cpf, :rg, :data_nasc, :estado_civil, :regime_bens, :renda, :sera_admin, :dispon_integral, :pagto_taxas, :pro_contratos, :valid_ponto_comers, :doc_ponto_comers, :aprov_estabelecimento, :oprov_proj_arqus , :trein_consul_comercia, :trein_coord_pedags, :trein_oper_franquia, :trein_prof_titulars, :quem_sera_admin, :resumo_prof, :planilhas, :manifesto_pos, :email, :redacaos, :cronogramas, :projeto_arquitetonicos, :cartum, :status, :doc_fiscais, :interessado_id, :doc_fiscais)
    end
end
