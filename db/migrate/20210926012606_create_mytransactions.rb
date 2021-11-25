class CreateMytransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :mytransactions do |t|
      t.belongs_to :customer
      t.string :tipo_de_registro
      t.string :id_transaccion #32 reservados
      t.string :monto  #13 reservados
      t.string :reservado #5 espacios
      t.string :tipo #1:aprobado, 2:rechazado
      t.string :ID_cliente

      t.timestamps
    end
  end
end
