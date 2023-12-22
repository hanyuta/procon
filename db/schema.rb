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

ActiveRecord::Schema[7.0].define(version: 2023_12_21_034611) do
  create_table "client_infos", charset: "utf8", force: :cascade do |t|
    t.string "client_name", null: false
    t.string "client_info1"
    t.string "client_info2"
    t.string "client_info3"
    t.string "client_info4"
    t.string "client_info5"
    t.string "client_info6"
    t.string "client_info7"
    t.string "client_info8"
    t.string "client_info9"
    t.string "client_info10"
    t.bigint "clients_info_name_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clients_info_name_id"], name: "index_client_infos_on_clients_info_name_id"
  end

  create_table "clients_info_names", charset: "utf8", force: :cascade do |t|
    t.string "clients_info1_name"
    t.string "clients_info2_name"
    t.string "clients_info3_name"
    t.string "clients_info4_name"
    t.string "clients_info5_name"
    t.string "clients_info6_name"
    t.string "clients_info7_name"
    t.string "clients_info8_name"
    t.string "clients_info9_name"
    t.string "clients_info10_name"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_info_names_on_user_id"
  end

  create_table "comments", charset: "utf8", force: :cascade do |t|
    t.string "comment", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "process_machines", charset: "utf8", force: :cascade do |t|
    t.string "pm_name", null: false
    t.string "pm_abbreviation", null: false
    t.string "pm_color", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", charset: "utf8", force: :cascade do |t|
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.bigint "process_machine_id", null: false
    t.bigint "client_info_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_info_id"], name: "index_schedules_on_client_info_id"
    t.index ["process_machine_id"], name: "index_schedules_on_process_machine_id"
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.boolean "admin_true", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "client_infos", "clients_info_names"
  add_foreign_key "clients_info_names", "users"
  add_foreign_key "comments", "users"
  add_foreign_key "schedules", "client_infos"
  add_foreign_key "schedules", "process_machines"
end
