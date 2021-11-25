require 'rest-client'
require 'json'
module RestClientServices

        module_function

        def initialize
        require 'rest-client'
        require 'json'
        url = 'https://increase-filetransactions.herokuapp.com/file.txt'
        bearer_token = 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'
        raw = RestClient::Request.execute(
                method: :get,
                url: url,
                headers: {Authorization: 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'},
                timeout: nil,
            #    :open_timeout => nil,
                raw_response: true)
        @my_file = raw.body  

        end
        def sumar(a)
                b = a + 1
        end
end
