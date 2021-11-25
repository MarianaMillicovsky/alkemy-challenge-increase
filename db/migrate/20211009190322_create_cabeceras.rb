class CreateCabeceras < ActiveRecord::Migration[6.1]
  def change
    create_table :cabeceras do |t|
      t.belongs_to :customer
      t.string :tipo_de_registro
      t.string :id_pago
      t.string :reservado 
      t.string :moneda 
      t.string :monto_total 
      t.string :total_descuentos 
      t.string :total_con_descuentos

      t.timestamps
    end
  end
end
