class TreinConsulComercialsController < ApplicationController
  before_action :set_trein_consul_comercial, only: [:show, :edit, :update, :destroy]

  # GET /trein_consul_comercials
  # GET /trein_consul_comercials.json
  def index
    @trein_consul_comercials = TreinConsulComercial.all
  end

  # GET /trein_consul_comercials/1
  # GET /trein_consul_comercials/1.json
  def show
  end

  # GET /trein_consul_comercials/new
  def new
    @trein_consul_comercial = TreinConsulComercial.new
  end

  # GET /trein_consul_comercials/1/edit
  def edit
  end

  # POST /trein_consul_comercials
  # POST /trein_consul_comercials.json
  def create
    @trein_consul_comercial = TreinConsulComercial.new(trein_consul_comercial_params)

    respond_to do |format|
      if @trein_consul_comercial.save
        format.html { redirect_to @trein_consul_comercial, notice: 'Trein consul comercial was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trein_consul_comercial }
      else
        format.html { render action: 'new' }
        format.json { render json: @trein_consul_comercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trein_consul_comercials/1
  # PATCH/PUT /trein_consul_comercials/1.json
  def update
    respond_to do |format|
      if @trein_consul_comercial.update(trein_consul_comercial_params)
        format.html { redirect_to @trein_consul_comercial, notice: 'Trein consul comercial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trein_consul_comercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trein_consul_comercials/1
  # DELETE /trein_consul_comercials/1.json
  def destroy
    @trein_consul_comercial.destroy
    respond_to do |format|
      format.html { redirect_to trein_consul_comercials_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trein_consul_comercial
      @trein_consul_comercial = TreinConsulComercial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trein_consul_comercial_params
      params.require(:trein_consul_comercial).permit(:estatus, :data, :interessado_id)
    end
end
