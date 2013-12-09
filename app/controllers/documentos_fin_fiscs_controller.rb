class DocumentosFinFiscsController < ApplicationController
  before_action :set_documentos_fin_fisc, only: [:show, :edit, :update, :destroy]

  # GET /documentos_fin_fiscs
  # GET /documentos_fin_fiscs.json
  def index
    @documentos_fin_fiscs = DocumentosFinFisc.all
  end

  # GET /documentos_fin_fiscs/1
  # GET /documentos_fin_fiscs/1.json
  def show
  end

  # GET /documentos_fin_fiscs/new
  def new
    @documentos_fin_fisc = DocumentosFinFisc.new
  end

  # GET /documentos_fin_fiscs/1/edit
  def edit
  end

  # POST /documentos_fin_fiscs
  # POST /documentos_fin_fiscs.json
  def create
    @documentos_fin_fisc = DocumentosFinFisc.new(documentos_fin_fisc_params)

    respond_to do |format|
      if @documentos_fin_fisc.save
        format.html { redirect_to @documentos_fin_fisc, notice: 'Documentos fin fisc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @documentos_fin_fisc }
      else
        format.html { render action: 'new' }
        format.json { render json: @documentos_fin_fisc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documentos_fin_fiscs/1
  # PATCH/PUT /documentos_fin_fiscs/1.json
  def update
    respond_to do |format|
      if @documentos_fin_fisc.update(documentos_fin_fisc_params)
        format.html { redirect_to @documentos_fin_fisc, notice: 'Documentos fin fisc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @documentos_fin_fisc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentos_fin_fiscs/1
  # DELETE /documentos_fin_fiscs/1.json
  def destroy
    @documentos_fin_fisc.destroy
    respond_to do |format|
      format.html { redirect_to documentos_fin_fiscs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documentos_fin_fisc
      @documentos_fin_fisc = DocumentosFinFisc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def documentos_fin_fisc_params
      params.require(:documentos_fin_fisc).permit(:nome_doc, :arquivo, :interessado_id)
    end
end
