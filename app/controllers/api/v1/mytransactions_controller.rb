module Api
  module V1
    class MytransactionsController < ApiController
      #before_action :set_url, only: [:show, :index]
      before_action :get_file, only: [:show, :index]


      # GET /filefiletransactions
      def index
        #@filefiletransactions = filefiletransaction.all
        #render json: Cabecera.all
        #render json: Filetransaction.all, status: :created
        #render json: Descount.all, status: :created
        #render json: Customer.all, status: :created
        render json: Footer.all, status: :created
      end

      # GET /filefiletransactions/1
      def show
        #render json: Customer.all.last, status: :ok
        render json: Filetransaction.all.last, status: :ok
        #render text: @my_file, status: :ok
        #render file: @my_file, status: :ok
      end


      private
        # Use callbacks to share common setup or constraints between actions.

        def set_url
        end


        # Only allow a list of trusted parameters through.
        def mytransaction_params
          params.fetch(:mytransaction, {})
        end


    end  #class MytransactionsController < ApiController
  end   #module V1
end   #module Api

