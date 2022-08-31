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

ActiveRecord::Schema[7.0].define(version: 2022_08_31_203832) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "space_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_assignments_on_space_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "bills", force: :cascade do |t|
    t.string "name"
    t.date "due_date"
    t.bigint "user_id", null: false
    t.bigint "space_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount"
    t.string "category"
    t.index ["space_id"], name: "index_bills_on_space_id"
    t.index ["user_id"], name: "index_bills_on_user_id"
  end

  create_table "chores", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.date "due_date"
    t.bigint "space_id", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.index ["space_id"], name: "index_chores_on_space_id"
    t.index ["user_id"], name: "index_chores_on_user_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.integer "amount"
    t.bigint "space_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_expenses_on_space_id"
    t.index ["user_id"], name: "index_expenses_on_user_id"
  end

  create_table "shopping_lists", force: :cascade do |t|
    t.string "name"
    t.bigint "space_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_shopping_lists_on_space_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.date "due_date"
    t.bigint "space_id", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_tasks_on_space_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assignments", "spaces"
  add_foreign_key "assignments", "users"
  add_foreign_key "bills", "spaces"
  add_foreign_key "bills", "users"
  add_foreign_key "chores", "spaces"
  add_foreign_key "chores", "users"
  add_foreign_key "expenses", "spaces"
  add_foreign_key "expenses", "users"
  add_foreign_key "shopping_lists", "spaces"
  add_foreign_key "tasks", "spaces"
  add_foreign_key "tasks", "users"
end
