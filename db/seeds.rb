# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BASE_URL = 'https://increase-transactions.herokuapp.com/'
url = 'https://increase-transactions.herokuapp.com/file.txt'
bearer_token = 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'
response = RestClient::Request.execute(
    method: :get,
    url: url,
    headers: {Authorization: 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'},
    timeout: 3600,
    raw_response: true)

    breeds_array = JSON.parse(response)

    binding.pry