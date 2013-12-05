class InteressadosController < ApplicationController
  before_action :set_interessado, only: [:show, :edit, :update, :destroy]

  # GET /interessados
  # GET /interessados.json
  def index
    @interessados = Interessado.all
    @interessados = Interessado.paginate(:page => params[:page], :per_page => 2)
  end

  # GET /interessados/1
  # GET /interessados/1.json
  def show
    @projeto_arquitetonicos = @interessado.projeto_arquitetonicos
    @cronogramas = @interessado.cronogramas
    @redacaos = @interessado.redacaos
    @planilhas = @interessado.planilhas
    @doc_fiscais = @interessado.doc_fiscais
    @cartum = @interessado.cartum
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
         @cartum.update(cartum_params)
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
      params.require(:interessado).permit(:nome, :cpf, :rg, :data_nasc, :estado_civil, :regime_bens, :renda, :sera_admin, :dispon_integral, :quem_sera_admin, :resumo_prof, :planilhas, :manifesto_pos, :email, :redacaos, :cronogramas, :projeto_arquitetonicos, :cartum, :status, :doc_fiscais, :carta, :doc_fiscais)
    end
end
