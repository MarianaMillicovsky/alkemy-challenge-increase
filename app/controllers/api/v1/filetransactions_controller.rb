class filetransactionsController < ApplicationController
  before_action :set_filetransaction, only: [:show, :update, :destroy]

  # GET /filetransactions
  def index
    @filetransactions = filetransaction.all

    render json: @filetransactions
  end

  # GET /filetransactions/1
  def show
    render json: @filetransaction
  end

  # POST /filetransactions
  def create
    @filetransaction = filetransaction.new(filetransaction_params)

    if @filetransaction.save
      render json: @filetransaction, status: :created, location: @filetransaction
    else
      render json: @filetransaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /filetransactions/1
  def update
    if @filetransaction.update(filetransaction_params)
      render json: @filetransaction
    else
      render json: @filetransaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /filetransactions/1
  def destroy
    @filetransaction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filetransaction
      @filetransaction = filetransaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def filetransaction_params
      params.fetch(:filetransaction, {})
    end
end
