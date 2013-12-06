class DocPontoComersController < ApplicationController
  before_action :set_doc_ponto_comer, only: [:show, :edit, :update, :destroy]

  # GET /doc_ponto_comers
  # GET /doc_ponto_comers.json
  def index
    @doc_ponto_comers = DocPontoComer.all
  end

  # GET /doc_ponto_comers/1
  # GET /doc_ponto_comers/1.json
  def show
  end

  # GET /doc_ponto_comers/new
  def new
    @doc_ponto_comer = DocPontoComer.new
  end

  # GET /doc_ponto_comers/1/edit
  def edit
  end

  # POST /doc_ponto_comers
  # POST /doc_ponto_comers.json
  def create
    @doc_ponto_comer = DocPontoComer.new(doc_ponto_comer_params)

    respond_to do |format|
      if @doc_ponto_comer.save
        format.html { redirect_to @doc_ponto_comer, notice: 'Doc ponto comer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @doc_ponto_comer }
      else
        format.html { render action: 'new' }
        format.json { render json: @doc_ponto_comer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doc_ponto_comers/1
  # PATCH/PUT /doc_ponto_comers/1.json
  def update
    respond_to do |format|
      if @doc_ponto_comer.update(doc_ponto_comer_params)
        format.html { redirect_to @doc_ponto_comer, notice: 'Doc ponto comer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @doc_ponto_comer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_ponto_comers/1
  # DELETE /doc_ponto_comers/1.json
  def destroy
    @doc_ponto_comer.destroy
    respond_to do |format|
      format.html { redirect_to doc_ponto_comers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_ponto_comer
      @doc_ponto_comer = DocPontoComer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doc_ponto_comer_params
      params.require(:doc_ponto_comer).permit(:estatus, :arquivo, :tipo, :interessado_id)
    end
end
