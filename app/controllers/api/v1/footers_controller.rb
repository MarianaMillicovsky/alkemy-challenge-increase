class FootersController < ApplicationController
  before_action :set_footer, only: [:show, :update, :destroy]

  # GET /footers
  def index
    @footers = Footer.all

    render json: @footers
  end

  # GET /footers/1
  def show
    render json: @footer
  end

  # POST /footers
  def create
    @footer = Footer.new(footer_params)

    if @footer.save
      render json: @footer, status: :created, location: @footer
    else
      render json: @footer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /footers/1
  def update
    if @footer.update(footer_params)
      render json: @footer
    else
      render json: @footer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /footers/1
  def destroy
    @footer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footer
      @footer = Footer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def footer_params
      params.fetch(:footer, {})
    end
end
