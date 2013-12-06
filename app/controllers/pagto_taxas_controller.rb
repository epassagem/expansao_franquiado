class PagtoTaxasController < ApplicationController
  before_action :set_pagto_taxa, only: [:show, :edit, :update, :destroy]

  # GET /pagto_taxas
  # GET /pagto_taxas.json
  def index
    @pagto_taxas = PagtoTaxa.all
  end

  # GET /pagto_taxas/1
  # GET /pagto_taxas/1.json
  def show
  end

  # GET /pagto_taxas/new
  def new
    @pagto_taxa = PagtoTaxa.new
  end

  # GET /pagto_taxas/1/edit
  def edit
  end

  # POST /pagto_taxas
  # POST /pagto_taxas.json
  def create
    @pagto_taxa = PagtoTaxa.new(pagto_taxa_params)

    respond_to do |format|
      if @pagto_taxa.save
        format.html { redirect_to @pagto_taxa, notice: 'Pagto taxa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pagto_taxa }
      else
        format.html { render action: 'new' }
        format.json { render json: @pagto_taxa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagto_taxas/1
  # PATCH/PUT /pagto_taxas/1.json
  def update
    respond_to do |format|
      if @pagto_taxa.update(pagto_taxa_params)
        format.html { redirect_to @pagto_taxa, notice: 'Pagto taxa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pagto_taxa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagto_taxas/1
  # DELETE /pagto_taxas/1.json
  def destroy
    @pagto_taxa.destroy
    respond_to do |format|
      format.html { redirect_to pagto_taxas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagto_taxa
      @pagto_taxa = PagtoTaxa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pagto_taxa_params
      params.require(:pagto_taxa).permit(:estatus, :interessado_id)
    end
end
