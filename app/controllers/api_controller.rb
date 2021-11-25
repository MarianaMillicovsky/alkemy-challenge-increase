class ApiController < ApplicationController
    require 'rest-client'
    require 'json'


    def get_file
        url = 'https://increase-transactions.herokuapp.com/file.txt'
        bearer_token = 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'
        raw = RestClient::Request.execute(
                method: :get,
                url: url,
                headers: {Authorization: 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'},
                timeout: nil,
            #    :open_timeout => nil,
                raw_response: true)
        @my_file = raw.body 

    
  #      def for_file_transactions(i)
  #        loop do 
  #          if @my_file[(i+46)..(i+50)] == "     "
  #            Filetransaction.create("customer_id": Customer.last.id, 
  #            "tipo_de_registro": @my_file[i], "id_transaccion": @my_file[(i+1..(i+1+31))],
  #            "monto": @my_file[(i+33)..(i+33+12)], "reservado": @my_file[(i+46)..(i+46+4)],
  #            "tipo": @my_file[i + 51])
  #            i += 53
  #          elsif (@my_file[(i+46)..(i+48)] == "   ")
  #            break
  #          else
  #            break
  #          end       
  #          end
  #      end 
    

    i = 0
    loop do 
      if (@my_file[(33)..(35)] == "   ")  && (i <= ((@my_file.length)-50))
      Customer.create()
      #Cabecera.create( "customer_id": Customer.last.id, 
      #      "tipo_de_registro": @my_file[i], "id_pago": @my_file[(i+1..(i+1+31))],
      #      "reservado": @my_file[(i+33)..(i+33+2)], "moneda": @my_file[(i+36)..(i+36+2)],
      #      "monto_total": @my_file[(i+39)..(i+39+12)], "total_descuentos": @my_file[(i+52)..(i+52+12)], 
      #      "total_con_descuentos": @my_file[(i+65)..(i+65+12)])
            i+=79
      loop do 
        if @my_file[(i+46)..(i+50)] == "     "
        #   Filetransaction.create("customer_id": Customer.last.id, 
        #   "tipo_de_registro": @my_file[i], "id_transaccion": @my_file[(i+1..(i+1+31))],
        #   "monto": @my_file[(i+33)..(i+33+12)], "reservado": @my_file[(i+46)..(i+46+4)],
        #   "tipo": @my_file[i + 51])
          i += 53
        elsif (@my_file[(i+46)..(i+48)] == "   ")
          break
        else
          break
        end       
        end
                # CALLBACK DESCOUNT
      loop do
        # Descount.create("customer_id": Customer.last.id, 
        # "tipo_de_registro": @my_file[i], "id_descuento": @my_file[(i+1..(i+1+31))],
        # "monto": @my_file[(i+33)..(i+33+12)], "reservado": @my_file[(i+46)..(i+46+2)],
        # "tipo": @my_file[i + 49])
      i+=51
      if (@my_file[(i+46)..(i+48)] != "   ")  
        if (@my_file[(i+1)..(i+15)] = "               ")
          Footer.create( "customer_id": Customer.all.last.id, 
          "tipo_de_registro": @my_file[i], "reservado": @my_file[(i+1..(i+1+14))],
          "fecha_de_pago": @my_file[(i+16)..(i+16+7)], "id_cliente": @my_file[(i+24)..(i+24+31)] )
          i+=57

             #response = RestClient.get(`https://increase-transactions.herokuapp.com/clients/#{Footer.last.id_cliente}`,
             #                       {:Authorization => 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'})
           #clients_url =  `https://increase-transactions.herokuapp.com/clients/#{Footer.last.id_cliente}`
            #client_response = RestClient::Request.execute(
             # method: :get,
            #  url: `https://increase-transactions.herokuapp.com/clients/#{Footer.last.id_cliente}`,
            #  headers: {Authorization: 'Bearer 1234567890qwertyuiopasdfghjklzxcvbnm'},
            #  timeout: nil,
          #    :open_timeout => nil,
             # raw_response: true)
            
            
                                    Customer.last.update("id_cliente": Footer.last.id_cliente)   
            #binding.pry       
            #break             

        end 
      else
        break
      end
      end

          #if (@my_file[(i+1)..(i+15)] = "               ")
          #  Footer.create( "customer_id": Customer.all.last.id, 
          #  "tipo_de_registro": @my_file[i], "reservado": @my_file[(i+1..(i+1+14))],
          #  "fecha_de_pago": @my_file[(i+16)..(i+16+7)], "id_cliente": @my_file[(i+24)..(i+24+31)] )
          #  i+=57
          #end


          

        else
        break
      end
      end

  end  # def get_file

   # before_action :authenticate_user!

end  # class ApiController