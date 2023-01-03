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

ActiveRecord::Schema[7.0].define(version: 2023_01_03_073546) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "transactions_id", null: false
    t.index ["transactions_id"], name: "index_categories_on_transactions_id"
    t.index ["users_id"], name: "index_categories_on_users_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.float "amount", default: 0.0
    t.bigint "users_id", null: false
    t.bigint "categories_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_transactions_on_categories_id"
    t.index ["users_id"], name: "index_transactions_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "categories", "transactions", column: "transactions_id"
  add_foreign_key "categories", "users", column: "users_id"
  add_foreign_key "transactions", "categories", column: "categories_id"
  add_foreign_key "transactions", "users", column: "users_id"
end
