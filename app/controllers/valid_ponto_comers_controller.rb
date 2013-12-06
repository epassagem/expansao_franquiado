class ValidPontoComersController < ApplicationController
  before_action :set_valid_ponto_comer, only: [:show, :edit, :update, :destroy]

  # GET /valid_ponto_comers
  # GET /valid_ponto_comers.json
  def index
    @valid_ponto_comers = ValidPontoComer.all
  end

  # GET /valid_ponto_comers/1
  # GET /valid_ponto_comers/1.json
  def show
  end

  # GET /valid_ponto_comers/new
  def new
    @valid_ponto_comer = ValidPontoComer.new
  end

  # GET /valid_ponto_comers/1/edit
  def edit
  end

  # POST /valid_ponto_comers
  # POST /valid_ponto_comers.json
  def create
    @valid_ponto_comer = ValidPontoComer.new(valid_ponto_comer_params)

    respond_to do |format|
      if @valid_ponto_comer.save
        format.html { redirect_to @valid_ponto_comer, notice: 'Valid ponto comer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @valid_ponto_comer }
      else
        format.html { render action: 'new' }
        format.json { render json: @valid_ponto_comer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /valid_ponto_comers/1
  # PATCH/PUT /valid_ponto_comers/1.json
  def update
    respond_to do |format|
      if @valid_ponto_comer.update(valid_ponto_comer_params)
        format.html { redirect_to @valid_ponto_comer, notice: 'Valid ponto comer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @valid_ponto_comer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valid_ponto_comers/1
  # DELETE /valid_ponto_comers/1.json
  def destroy
    @valid_ponto_comer.destroy
    respond_to do |format|
      format.html { redirect_to valid_ponto_comers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valid_ponto_comer
      @valid_ponto_comer = ValidPontoComer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def valid_ponto_comer_params
      params.require(:valid_ponto_comer).permit(:estatus, :interessado_id)
    end
end
