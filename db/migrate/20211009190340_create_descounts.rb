class CreateDescounts < ActiveRecord::Migration[6.1]
  def change
    create_table :descounts do |t|
      t.belongs_to :customer
      t.string :tipo_de_registro
      t.string :id_descuento
      t.string :monto 
      t.string :reservado  
      t.string :tipo 

      t.timestamps
    end
  end
end
