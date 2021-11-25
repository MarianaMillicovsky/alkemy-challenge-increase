class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :job
      t.string :country
      t.string :address
      t.string :zip_code
      t.string :phone
      t.string :id_cliente

      t.timestamps
    end
  end
end
