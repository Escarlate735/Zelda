# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_06_26_024956) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "Nome"
    t.string "CPF"
    t.string "Email"
    t.string "Endereco"
    t.string "Data_de_Nascimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacotes", force: :cascade do |t|
    t.string "Pagamento"
    t.string "Status"
    t.integer "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_pacotes_on_cliente_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "Nome"
    t.string "CPF"
    t.string "Email"
    t.string "Endereco"
    t.string "Data_de_Nascimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
