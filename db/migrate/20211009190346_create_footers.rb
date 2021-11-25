class CreateFooters < ActiveRecord::Migration[6.1]
  def change
    create_table :footers do |t|
      t.belongs_to :customer
      t.string :tipo_de_registro
      t.string :reservado       
      t.string :fecha_de_pago
      t.string :id_cliente

      t.timestamps
    end
  end
end
