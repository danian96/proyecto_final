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

ActiveRecord::Schema.define(version: 20180521053109) do

  create_table "civil_states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "acctionlink"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "memorandum_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memorandums", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "description"
    t.bigint "memorandum_type_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["memorandum_type_id"], name: "index_memorandums_on_memorandum_type_id"
    t.index ["user_id"], name: "index_memorandums_on_user_id"
  end

  create_table "people", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "last_name"
    t.date "birthday"
    t.string "sex"
    t.integer "ci"
    t.text "address"
    t.integer "cellphone"
    t.bigint "user_id"
    t.bigint "civil_state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["civil_state_id"], name: "index_people_on_civil_state_id"
    t.index ["user_id"], name: "index_people_on_user_id"
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

<<<<<<< HEAD
=======
  create_table "stock_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "buying_date"
    t.string "item_name"
    t.integer "quantity"
    t.bigint "stock_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stock_category_id"], name: "index_stocks_on_stock_category_id"
  end

>>>>>>> 4a1e0d37a451c24b3a9fa61196d49334f9f8e03e
  create_table "trainings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "description"
    t.date "init_date"
<<<<<<< HEAD
    t.date "finish_date"
=======
    t.date "finish_day"
>>>>>>> 4a1e0d37a451c24b3a9fa61196d49334f9f8e03e
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_trainings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "state"
    t.bigint "training_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["training_id"], name: "index_user_trainings_on_training_id"
    t.index ["user_id"], name: "index_user_trainings_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "assign_details", "assignation_stocks"
  add_foreign_key "assign_details", "stocks"
  add_foreign_key "assignation_stocks", "users"
  add_foreign_key "favorites", "users"
  add_foreign_key "memorandums", "memorandum_types"
  add_foreign_key "memorandums", "users"
  add_foreign_key "people", "civil_states"
  add_foreign_key "people", "users"
<<<<<<< HEAD
=======
  add_foreign_key "stocks", "stock_categories"
>>>>>>> 4a1e0d37a451c24b3a9fa61196d49334f9f8e03e
  add_foreign_key "user_trainings", "trainings"
  add_foreign_key "user_trainings", "users"
end
