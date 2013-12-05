class ProjetoArquitetonicosController < ApplicationController
  before_action :set_projeto_arquitetonico, only: [:show, :edit, :update, :destroy]

  # GET /projeto_arquitetonicos
  # GET /projeto_arquitetonicos.json
  def index
    @projeto_arquitetonicos = ProjetoArquitetonico.all
  end

  # GET /projeto_arquitetonicos/1
  # GET /projeto_arquitetonicos/1.json
  def show
  end

  # GET /projeto_arquitetonicos/new
  def new
    @projeto_arquitetonico = ProjetoArquitetonico.new
  end

  # GET /projeto_arquitetonicos/1/edit
  def edit
  end

  # POST /projeto_arquitetonicos
  # POST /projeto_arquitetonicos.json
  def create
    @projeto_arquitetonico = ProjetoArquitetonico.new(projeto_arquitetonico_params)

    respond_to do |format|
      if @projeto_arquitetonico.save
        format.html { redirect_to @projeto_arquitetonico, notice: 'Projeto arquitetonico was successfully created.' }
        format.json { render action: 'show', status: :created, location: @projeto_arquitetonico }
      else
        format.html { render action: 'new' }
        format.json { render json: @projeto_arquitetonico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projeto_arquitetonicos/1
  # PATCH/PUT /projeto_arquitetonicos/1.json
  def update
    respond_to do |format|
      if @projeto_arquitetonico.update(projeto_arquitetonico_params)
        format.html { redirect_to @projeto_arquitetonico, notice: 'Projeto arquitetonico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @projeto_arquitetonico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projeto_arquitetonicos/1
  # DELETE /projeto_arquitetonicos/1.json
  def destroy
    @projeto_arquitetonico.destroy
    respond_to do |format|
      format.html { redirect_to projeto_arquitetonicos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projeto_arquitetonico
      @projeto_arquitetonico = ProjetoArquitetonico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projeto_arquitetonico_params
      params.require(:projeto_arquitetonico).permit(:status)
    end
end
