class CustomersController < ApplicationController
  before_action :get_file, only: [:show, :index]
  before_action :set_url

  # GET /customers
  def index
    #@customers = Customer.all

    render json: response
  end

  # GET /customers/1
  def show
    render json: customer
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url

      require 'rest-client'
      require 'json'

      #client_ID = Customer.find_by("id": params)
      #url = `https://increase-filetransactions.herokuapp.com/clients/#{client_ID}`
      #token = 'Bearer  1234567890qwertyuiopasdfghjklzxcvbnm'

      #response = RestClient.get(url, {:Authorization => token})
 

         
    binding.pry

      response = RestClient.get(`https://increase-filetransactions.herokuapp.com/clients/#{Customer.last.id_cliente}`,
      {:Authorization => 'Bearer  1234567890qwertyuiopasdfghjklzxcvbnm'}) 
      #if response.code == 200
       # byebug
      #  @customer = response.body     #.headers

      #headers: 
     # 'Token' => '1234567890qwertyuiopasdfghjklzxcvbnm'
      #response = RestClient.get('https://increase-filetransactions.herokuapp.com/clients/5''https://increase-filetransactions.herokuapp.com/clients/5')
      #results = JSON.parse(response.to_str)
     # @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer
      @customer ||= Customer.find(params[:id]) if params[:id]
      @customer ||= Customer.find(params[:id_cliente]) if params[:id_cliente]

      #params.fetch(:customer, {})
    end
end
