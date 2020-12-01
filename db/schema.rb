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

ActiveRecord::Schema.define(version: 2020_11_03_124440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.decimal "quantity"
    t.decimal "unit_price"
    t.bigint "products_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["products_id"], name: "index_line_items_on_products_id"
  end

  create_table "products", force: :cascade do |t|
    t.text "image"
    t.text "name"
    t.decimal "price"
    t.text "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "type"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "calle"
    t.string "localidad"
    t.string "codigo_postal"
    t.string "telefono"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "inicio"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "untitled_table_185", id: false, force: :cascade do |t|
    t.serial "id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "profiles", "users"
end
