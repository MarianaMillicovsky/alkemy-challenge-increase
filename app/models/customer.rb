class Customer < ApplicationRecord
    #has_many :mytransactions
    has_one :cabecera
    has_many :filetransactions
    has_many :descounts
    has_one :footer
end
