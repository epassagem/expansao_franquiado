class RedacaosController < ApplicationController
  before_action :set_redacao, only: [:show, :edit, :update, :destroy]

  # GET /redacaos
  # GET /redacaos.json
  def index
    @redacaos = Redacao.all
  end

  # GET /redacaos/1
  # GET /redacaos/1.json
  def show
  end

  # GET /redacaos/new
  def new
    @redacao = Redacao.new
  end

  # GET /redacaos/1/edit
  def edit
  end

  # POST /redacaos
  # POST /redacaos.json
  def create
    @redacao = Redacao.new(redacao_params)

    respond_to do |format|
      if @redacao.save
        format.html { redirect_to @redacao, notice: 'Redacao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @redacao }
      else
        format.html { render action: 'new' }
        format.json { render json: @redacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redacaos/1
  # PATCH/PUT /redacaos/1.json
  def update
    respond_to do |format|
      if @redacao.update(redacao_params)
        format.html { redirect_to @redacao, notice: 'Redacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @redacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redacaos/1
  # DELETE /redacaos/1.json
  def destroy
    @redacao.destroy
    respond_to do |format|
      format.html { redirect_to redacaos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redacao
      @redacao = Redacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def redacao_params
      params.require(:redacao).permit(:arquivo, :status, :interessado_id)
    end
end
