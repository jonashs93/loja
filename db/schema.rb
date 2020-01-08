# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_08_003506) do

  create_table "cores", force: :cascade do |t|
    t.string "nome", limit: 100
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "produto_cores", force: :cascade do |t|
    t.integer "produto_id"
    t.integer "cor_id"
    t.integer "quantidade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cor_id"], name: "index_produto_cores_on_cor_id"
    t.index ["produto_id"], name: "index_produto_cores_on_produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome", limit: 100
    t.text "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "produtos_cores_tamanhos", force: :cascade do |t|
    t.integer "produto_cor_id"
    t.integer "tamanho_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["produto_cor_id"], name: "index_produtos_cores_tamanhos_on_produto_cor_id"
    t.index ["tamanho_id"], name: "index_produtos_cores_tamanhos_on_tamanho_id"
  end

  create_table "tamanhos", force: :cascade do |t|
    t.string "nome", limit: 100
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "produto_cores", "cores"
  add_foreign_key "produto_cores", "produtos"
  add_foreign_key "produtos_cores_tamanhos", "produtos_cores"
  add_foreign_key "produtos_cores_tamanhos", "tamanhos"
end
