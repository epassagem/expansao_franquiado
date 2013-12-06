class OprovProjArqusController < ApplicationController
  before_action :set_oprov_proj_arqu, only: [:show, :edit, :update, :destroy]

  # GET /oprov_proj_arqus
  # GET /oprov_proj_arqus.json
  def index
    @oprov_proj_arqus = OprovProjArqu.all
  end

  # GET /oprov_proj_arqus/1
  # GET /oprov_proj_arqus/1.json
  def show
  end

  # GET /oprov_proj_arqus/new
  def new
    @oprov_proj_arqu = OprovProjArqu.new
  end

  # GET /oprov_proj_arqus/1/edit
  def edit
  end

  # POST /oprov_proj_arqus
  # POST /oprov_proj_arqus.json
  def create
    @oprov_proj_arqu = OprovProjArqu.new(oprov_proj_arqu_params)

    respond_to do |format|
      if @oprov_proj_arqu.save
        format.html { redirect_to @oprov_proj_arqu, notice: 'Oprov proj arqu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @oprov_proj_arqu }
      else
        format.html { render action: 'new' }
        format.json { render json: @oprov_proj_arqu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oprov_proj_arqus/1
  # PATCH/PUT /oprov_proj_arqus/1.json
  def update
    respond_to do |format|
      if @oprov_proj_arqu.update(oprov_proj_arqu_params)
        format.html { redirect_to @oprov_proj_arqu, notice: 'Oprov proj arqu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @oprov_proj_arqu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oprov_proj_arqus/1
  # DELETE /oprov_proj_arqus/1.json
  def destroy
    @oprov_proj_arqu.destroy
    respond_to do |format|
      format.html { redirect_to oprov_proj_arqus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oprov_proj_arqu
      @oprov_proj_arqu = OprovProjArqu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oprov_proj_arqu_params
      params.require(:oprov_proj_arqu).permit(:estatus, :interessado_id)
    end
end
