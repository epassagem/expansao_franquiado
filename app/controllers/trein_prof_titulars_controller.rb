class TreinProfTitularsController < ApplicationController
  before_action :set_trein_prof_titular, only: [:show, :edit, :update, :destroy]

  # GET /trein_prof_titulars
  # GET /trein_prof_titulars.json
  def index
    @trein_prof_titulars = TreinProfTitular.all
  end

  # GET /trein_prof_titulars/1
  # GET /trein_prof_titulars/1.json
  def show
  end

  # GET /trein_prof_titulars/new
  def new
    @trein_prof_titular = TreinProfTitular.new
  end

  # GET /trein_prof_titulars/1/edit
  def edit
  end

  # POST /trein_prof_titulars
  # POST /trein_prof_titulars.json
  def create
    @trein_prof_titular = TreinProfTitular.new(trein_prof_titular_params)

    respond_to do |format|
      if @trein_prof_titular.save
        format.html { redirect_to @trein_prof_titular, notice: 'Trein prof titular was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trein_prof_titular }
      else
        format.html { render action: 'new' }
        format.json { render json: @trein_prof_titular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trein_prof_titulars/1
  # PATCH/PUT /trein_prof_titulars/1.json
  def update
    respond_to do |format|
      if @trein_prof_titular.update(trein_prof_titular_params)
        format.html { redirect_to @trein_prof_titular, notice: 'Trein prof titular was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trein_prof_titular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trein_prof_titulars/1
  # DELETE /trein_prof_titulars/1.json
  def destroy
    @trein_prof_titular.destroy
    respond_to do |format|
      format.html { redirect_to trein_prof_titulars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trein_prof_titular
      @trein_prof_titular = TreinProfTitular.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trein_prof_titular_params
      params.require(:trein_prof_titular).permit(:estatus, :data, :interessado_id)
    end
end
