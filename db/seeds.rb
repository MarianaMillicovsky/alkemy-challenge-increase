# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BASE_URL = 'https://increase-filetransactiontions.herokuapp.com/'
url = 'https://increase-filetransactiontions.herokuapp.com/file.txt'
bearer_token = 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'
response = RestClient.get(url, {:Authorization => bearer_token})

require 'charlock_holmes'
      def detected_encoding(text)
        @text = text
        CharlockHolmes::EncodingDetector.detect(@text)[:encoding]
      end

      def convert_to_utf8(text,detected_encoding)
        CharlockHolmes::Converter.convert(text, detected_encoding, "UTF-8")
      end


#breeds_array = JSON.parse(response)

binding.pry