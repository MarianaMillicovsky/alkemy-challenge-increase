class CustomersController < ApplicationController
  before_action :set_url

  # GET /customers
  def index
    @customers = Customer.all

    render json: @customers
  end

  # GET /customers/1
  def show
    render json: @customer
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url



      require 'rest-client'
      require 'json'
      url = 'https://increase-transactions.herokuapp.com/clients/1'
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    response = RestClient::Request.execute(
           method: :get,
           url: url,
           headers: {Authorization: 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'},
           timeout: 3600)
         
    binding.pry
    if response.code == 200
     @customer = response

      #response = RestClient.get('https://increase-transactions.herokuapp.com/clients/1',
      #{:Authorization => 'Bearer  1234567890qwertyuiopasdfghjklzxcvbnm'}) 
      #if response.code == 200
       # byebug
      #  @customer = response.body     #.headers
      end

      #headers: 
     # 'Token' => '1234567890qwertyuiopasdfghjklzxcvbnm'
      #response = RestClient.get('https://increase-transactions.herokuapp.com/clients/5''https://increase-transactions.herokuapp.com/clients/5')
      #results = JSON.parse(response.to_str)
     # @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.fetch(:customer, {})
    end
end
