class AprovEstabelecimentosController < ApplicationController
  before_action :set_aprov_estabelecimento, only: [:show, :edit, :update, :destroy]

  # GET /aprov_estabelecimentos
  # GET /aprov_estabelecimentos.json
  def index
    @aprov_estabelecimentos = AprovEstabelecimento.all
  end

  # GET /aprov_estabelecimentos/1
  # GET /aprov_estabelecimentos/1.json
  def show
  end

  # GET /aprov_estabelecimentos/new
  def new
    @aprov_estabelecimento = AprovEstabelecimento.new
  end

  # GET /aprov_estabelecimentos/1/edit
  def edit
  end

  # POST /aprov_estabelecimentos
  # POST /aprov_estabelecimentos.json
  def create
    @aprov_estabelecimento = AprovEstabelecimento.new(aprov_estabelecimento_params)

    respond_to do |format|
      if @aprov_estabelecimento.save
        format.html { redirect_to @aprov_estabelecimento, notice: 'Aprov estabelecimento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @aprov_estabelecimento }
      else
        format.html { render action: 'new' }
        format.json { render json: @aprov_estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aprov_estabelecimentos/1
  # PATCH/PUT /aprov_estabelecimentos/1.json
  def update
    respond_to do |format|
      if @aprov_estabelecimento.update(aprov_estabelecimento_params)
        format.html { redirect_to @aprov_estabelecimento, notice: 'Aprov estabelecimento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aprov_estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aprov_estabelecimentos/1
  # DELETE /aprov_estabelecimentos/1.json
  def destroy
    @aprov_estabelecimento.destroy
    respond_to do |format|
      format.html { redirect_to aprov_estabelecimentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aprov_estabelecimento
      @aprov_estabelecimento = AprovEstabelecimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aprov_estabelecimento_params
      params.require(:aprov_estabelecimento).permit(:estatus, :interessado_id)
    end
end
