class DescountsController < ApplicationController
  before_action :set_descount, only: [:show, :update, :destroy]

  # GET /descounts
  def index
    @descounts = Descount.all

    render json: @descounts
  end

  # GET /descounts/1
  def show
    render json: @descount
  end

  # POST /descounts
  def create
    @descount = Descount.new(descount_params)

    if @descount.save
      render json: @descount, status: :created, location: @descount
    else
      render json: @descount.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /descounts/1
  def update
    if @descount.update(descount_params)
      render json: @descount
    else
      render json: @descount.errors, status: :unprocessable_entity
    end
  end

  # DELETE /descounts/1
  def destroy
    @descount.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descount
      @descount = Descount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def descount_params
      params.fetch(:descount, {})
    end
end
