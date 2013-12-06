class TreinOperFranquiaController < ApplicationController
  before_action :set_trein_oper_franquium, only: [:show, :edit, :update, :destroy]

  # GET /trein_oper_franquia
  # GET /trein_oper_franquia.json
  def index
    @trein_oper_franquia = TreinOperFranquium.all
  end

  # GET /trein_oper_franquia/1
  # GET /trein_oper_franquia/1.json
  def show
  end

  # GET /trein_oper_franquia/new
  def new
    @trein_oper_franquium = TreinOperFranquium.new
  end

  # GET /trein_oper_franquia/1/edit
  def edit
  end

  # POST /trein_oper_franquia
  # POST /trein_oper_franquia.json
  def create
    @trein_oper_franquium = TreinOperFranquium.new(trein_oper_franquium_params)

    respond_to do |format|
      if @trein_oper_franquium.save
        format.html { redirect_to @trein_oper_franquium, notice: 'Trein oper franquium was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trein_oper_franquium }
      else
        format.html { render action: 'new' }
        format.json { render json: @trein_oper_franquium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trein_oper_franquia/1
  # PATCH/PUT /trein_oper_franquia/1.json
  def update
    respond_to do |format|
      if @trein_oper_franquium.update(trein_oper_franquium_params)
        format.html { redirect_to @trein_oper_franquium, notice: 'Trein oper franquium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trein_oper_franquium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trein_oper_franquia/1
  # DELETE /trein_oper_franquia/1.json
  def destroy
    @trein_oper_franquium.destroy
    respond_to do |format|
      format.html { redirect_to trein_oper_franquia_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trein_oper_franquium
      @trein_oper_franquium = TreinOperFranquium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trein_oper_franquium_params
      params.require(:trein_oper_franquium).permit(:estatus, :data, :interessado_id)
    end
end
