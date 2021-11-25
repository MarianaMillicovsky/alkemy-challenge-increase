class CabecerasController < ApplicationController
  before_action :set_cabecera, only: [:show, :update, :destroy]

  # GET /cabeceras
  def index
    @cabeceras = Cabecera.all

    render json: @cabeceras
  end

  # GET /cabeceras/1
  def show
    render json: @cabecera
  end

  # POST /cabeceras
  def create
    @cabecera = Cabecera.new(cabecera_params)

    if @cabecera.save
      render json: @cabecera, status: :created, location: @cabecera
    else
      render json: @cabecera.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cabeceras/1
  def update
    if @cabecera.update(cabecera_params)
      render json: @cabecera
    else
      render json: @cabecera.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cabeceras/1
  def destroy
    @cabecera.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabecera
      @cabecera = Cabecera.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cabecera_params
      params.fetch(:cabecera, {})
    end
end
