class DocFiscaisController < ApplicationController
  before_action :set_doc_fiscai, only: [:show, :edit, :update, :destroy]

  # GET /doc_fiscais
  # GET /doc_fiscais.json
  def index
    @doc_fiscais = DocFiscai.all
  end

  # GET /doc_fiscais/1
  # GET /doc_fiscais/1.json
  def show
  end

  # GET /doc_fiscais/new
  def new
    @doc_fiscai = DocFiscai.new
  end

  # GET /doc_fiscais/1/edit
  def edit
  end

  # POST /doc_fiscais
  # POST /doc_fiscais.json
  def create
    @doc_fiscai = DocFiscai.new(doc_fiscai_params)

    respond_to do |format|
      if @doc_fiscai.save
        format.html { redirect_to @doc_fiscai, notice: 'Doc fiscai was successfully created.' }
        format.json { render action: 'show', status: :created, location: @doc_fiscai }
      else
        format.html { render action: 'new' }
        format.json { render json: @doc_fiscai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doc_fiscais/1
  # PATCH/PUT /doc_fiscais/1.json
  def update
    respond_to do |format|
      if @doc_fiscai.update(doc_fiscai_params)
        format.html { redirect_to @doc_fiscai, notice: 'Doc fiscai was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @doc_fiscai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_fiscais/1
  # DELETE /doc_fiscais/1.json
  def destroy
    @doc_fiscai.destroy
    respond_to do |format|
      format.html { redirect_to doc_fiscais_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_fiscai
      @doc_fiscai = DocFiscai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doc_fiscai_params
      params.require(:doc_fiscai).permit(:rg, :cpf, :serasa, :fpc, :bens_imob, :imposto_renda_pf, :imposto_renda_pj, :comprovante_resid, :certidao_casamento, :socio_rg, :socio_cpf, :socio_serasa, :socio_fpc, :socio_bens_imob, :socio_imposto_renda_pf, :socio_imposto_renda_pj, :socio_comprovante_resid, :socio_certidao_casamento)
    end
end
