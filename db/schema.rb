# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_11_191628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_balances", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cabeceras", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "tipo_de_registro"
    t.string "id_pago"
    t.string "reservado"
    t.string "moneda"
    t.string "monto_total"
    t.string "total_descuentos"
    t.string "total_con_descuentos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_cabeceras_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "job"
    t.string "country"
    t.string "address"
    t.string "zip_code"
    t.string "phone"
    t.string "id_cliente"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "descounts", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "tipo_de_registro"
    t.string "id_descuento"
    t.string "monto"
    t.string "reservado"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_descounts_on_customer_id"
  end

  create_table "filetransactions", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "tipo_de_registro"
    t.string "id_transaccion"
    t.string "monto"
    t.string "reservado"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_filetransactions_on_customer_id"
  end

  create_table "footers", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "tipo_de_registro"
    t.string "reservado"
    t.string "fecha_de_pago"
    t.string "id_cliente"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_footers_on_customer_id"
  end

  create_table "mytransactions", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "tipo_de_registro"
    t.string "id_transaccion"
    t.string "monto"
    t.string "reservado"
    t.string "tipo"
    t.string "ID_cliente"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_mytransactions_on_customer_id"
  end

end
