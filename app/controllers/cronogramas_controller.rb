class CronogramasController < ApplicationController
  before_action :set_cronograma, only: [:show, :edit, :update, :destroy]

  # GET /cronogramas
  # GET /cronogramas.json
  def index
    @cronogramas = Cronograma.all
  end

  # GET /cronogramas/1
  # GET /cronogramas/1.json
  def show
  end

  # GET /cronogramas/new
  def new
    @cronograma = Cronograma.new
  end

  # GET /cronogramas/1/edit
  def edit
  end

  # POST /cronogramas
  # POST /cronogramas.json
  def create
    @cronograma = Cronograma.new(cronograma_params)

    respond_to do |format|
      if @cronograma.save
        format.html { redirect_to @cronograma, notice: 'Cronograma was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cronograma }
      else
        format.html { render action: 'new' }
        format.json { render json: @cronograma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cronogramas/1
  # PATCH/PUT /cronogramas/1.json
  def update
    respond_to do |format|
      if @cronograma.update(cronograma_params)
        format.html { redirect_to @cronograma, notice: 'Cronograma was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cronograma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cronogramas/1
  # DELETE /cronogramas/1.json
  def destroy
    @cronograma.destroy
    respond_to do |format|
      format.html { redirect_to cronogramas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cronograma
      @cronograma = Cronograma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cronograma_params
      params.require(:cronograma).permit(:status, :interessado_id)
    end
end
