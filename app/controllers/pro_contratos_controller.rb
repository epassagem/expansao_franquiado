class ProContratosController < ApplicationController
  before_action :set_pro_contrato, only: [:show, :edit, :update, :destroy]

  # GET /pro_contratos
  # GET /pro_contratos.json
  def index
    @pro_contratos = ProContrato.all
  end

  # GET /pro_contratos/1
  # GET /pro_contratos/1.json
  def show
  end

  # GET /pro_contratos/new
  def new
    @pro_contrato = ProContrato.new
  end

  # GET /pro_contratos/1/edit
  def edit
  end

  # POST /pro_contratos
  # POST /pro_contratos.json
  def create
    @pro_contrato = ProContrato.new(pro_contrato_params)

    respond_to do |format|
      if @pro_contrato.save
        format.html { redirect_to @pro_contrato, notice: 'Pro contrato was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pro_contrato }
      else
        format.html { render action: 'new' }
        format.json { render json: @pro_contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pro_contratos/1
  # PATCH/PUT /pro_contratos/1.json
  def update
    respond_to do |format|
      if @pro_contrato.update(pro_contrato_params)
        format.html { redirect_to @pro_contrato, notice: 'Pro contrato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pro_contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pro_contratos/1
  # DELETE /pro_contratos/1.json
  def destroy
    @pro_contrato.destroy
    respond_to do |format|
      format.html { redirect_to pro_contratos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pro_contrato
      @pro_contrato = ProContrato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pro_contrato_params
      params.require(:pro_contrato).permit(:arquivo, :estatus, :interessado_id)
    end
end
