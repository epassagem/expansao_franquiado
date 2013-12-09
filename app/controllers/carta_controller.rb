class CartaController < ApplicationController
  before_action :set_cartum, only: [:show, :edit, :update, :destroy]

  # GET /carta
  # GET /carta.json
  def index
    @carta = Cartum.all
  end

  # GET /carta/1
  # GET /carta/1.json
  def show
  end

  # GET /carta/new
  def new
    @cartum = Cartum.new
  end

  # GET /carta/1/edit
  def edit
  end

  # POST /carta
  # POST /carta.json
  def create
    @cartum = Cartum.new(cartum_params)

    respond_to do |format|
      if @cartum.save
        format.html { redirect_to @cartum, notice: 'Cartum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cartum }
      else
        format.html { render action: 'new' }
        format.json { render json: @cartum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carta/1
  # PATCH/PUT /carta/1.json
  def update
    respond_to do |format|
      if @cartum.update(cartum_params)
        format.html { redirect_to @cartum, notice: 'Cartum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cartum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carta/1
  # DELETE /carta/1.json
  def destroy
    @cartum.destroy
    respond_to do |format|
      format.html { redirect_to carta_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartum
      @cartum = Cartum.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartum_params
      params.require(:cartum).permit(:arquivo, :status, :interessado_id)
    end
end
