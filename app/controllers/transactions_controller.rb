class TransactionsController < ApplicationController
  before_action :set_url, only: [:show]

  # GET /transactions
  def index
    #@transactions = Transaction.all

    render status: :created
  end

  # GET /transactions/1
  def show
    render status: :ok
  end


  private
    # Use callbacks to share common setup or constraints between actions.

    def set_url
      require 'rest-client'
      require 'json'
      url = 'https://increase-transactions.herokuapp.com/file.txt'
      #@transaction = RestClient.get(url,
      #{:Authorization => 'Bearer  1234567890qwertyuiopasdfghjklzxcvbnm'} ,:accept => 'file/txt')#,  :upload => {
     #   :file => File.new('tmp/cache', 'rb') } 
     #   )
     bearer_token = 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'
    # uri = URI(url)
    # response = RestClient.get(url, {:Authorization => bearer_token})
    # response = RestClient.get('https://increase-transactions.herokuapp.com/file.txt',
    #                           {:Authorization => token})
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    
     raw = RestClient::Request.execute(
           method: :get,
           url: url,
           headers: {Authorization: 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'},
           timeout: 3600,
           raw_response: true)

           #File.open("/tmp/file.txt", "wb") do |f| 
           # f.write raw.body
          #end
          file = File.open("/tmp/file.txt", 'wb' ) do |output|
            output.write RestClient::Request.execute(
              method: :get,
              url: url,
              headers: {Authorization: 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'},
              timeout: 3600,
              raw_response: true)
          end
    binding.pry
    #if response.code == 200
    #  f = File.new("backup.txt", "r+")
    #  f << raw
    #  f.close
    puts "Backup Complete"
    #Pathname('file.txt').write response.to_s 
    #@transaction = response     #.headers

    #end
     
     #uri = URI.parse(url)
      #resource = RestClient::Resource.new(
      #  backup_url,
      #  :timeout => nil,
      #  :Authorization => 'Bearer  1234567890qwertyuiopasdfghjklzxcvbnm',
      #  :open_timeout => nil)
      #  response = resource.get
      #  if response.code == 200
      #   puts "Backup Complete"
      #  else
      #   puts "Backup Failed"
      #   abort("Response Code was not 200: Response Code #{response.code}")
      #  end

    end

    # Only allow a list of trusted parameters through.
    def transaction_params
      params.fetch(:transaction, {})
    end
end
