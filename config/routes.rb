Rails.application.routes.draw do
#  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    namespace :v1 do
      resources :filetransactions,   #Se accede a la ruta /api/v1/characters
                :footers,
                :descounts,
                :cabeceras, 
                :account_balances, 
                :mytransactions, 
                :customers
    end
  end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
