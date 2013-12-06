class TreinCoordPedagsController < ApplicationController
  before_action :set_trein_coord_pedag, only: [:show, :edit, :update, :destroy]

  # GET /trein_coord_pedags
  # GET /trein_coord_pedags.json
  def index
    @trein_coord_pedags = TreinCoordPedag.all
  end

  # GET /trein_coord_pedags/1
  # GET /trein_coord_pedags/1.json
  def show
  end

  # GET /trein_coord_pedags/new
  def new
    @trein_coord_pedag = TreinCoordPedag.new
  end

  # GET /trein_coord_pedags/1/edit
  def edit
  end

  # POST /trein_coord_pedags
  # POST /trein_coord_pedags.json
  def create
    @trein_coord_pedag = TreinCoordPedag.new(trein_coord_pedag_params)

    respond_to do |format|
      if @trein_coord_pedag.save
        format.html { redirect_to @trein_coord_pedag, notice: 'Trein coord pedag was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trein_coord_pedag }
      else
        format.html { render action: 'new' }
        format.json { render json: @trein_coord_pedag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trein_coord_pedags/1
  # PATCH/PUT /trein_coord_pedags/1.json
  def update
    respond_to do |format|
      if @trein_coord_pedag.update(trein_coord_pedag_params)
        format.html { redirect_to @trein_coord_pedag, notice: 'Trein coord pedag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trein_coord_pedag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trein_coord_pedags/1
  # DELETE /trein_coord_pedags/1.json
  def destroy
    @trein_coord_pedag.destroy
    respond_to do |format|
      format.html { redirect_to trein_coord_pedags_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trein_coord_pedag
      @trein_coord_pedag = TreinCoordPedag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trein_coord_pedag_params
      params.require(:trein_coord_pedag).permit(:estatus, :data, :interessado_id)
    end
end
