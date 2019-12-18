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

ActiveRecord::Schema.define(version: 2019_12_17_124725) do

  create_table "ages", force: :cascade do |t|
    t.date "age"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_ages_on_user_id"
  end

  create_table "childguardians", force: :cascade do |t|
    t.string "guardian_name"
    t.integer "guardian_order"
    t.integer "user_id"
    t.integer "child_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["child_id"], name: "index_childguardians_on_child_id"
    t.index ["user_id"], name: "index_childguardians_on_user_id"
  end

  create_table "children", force: :cascade do |t|
    t.string "child_name"
    t.date "child_age"
    t.string "child_parents"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "create_another"
    t.index ["user_id"], name: "index_children_on_user_id"
  end

  create_table "custodians", force: :cascade do |t|
    t.string "custodian_name"
    t.integer "custodian_order"
    t.integer "child_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["child_id"], name: "index_custodians_on_child_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "fullname"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_people_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.string "status"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_relationships_on_user_id"
  end

  create_table "spouses", force: :cascade do |t|
    t.string "spouse_name"
    t.date "spouse_age"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_spouses_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "state"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_states_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "custodians", "children"
  add_foreign_key "people", "users"
  add_foreign_key "states", "users"
end
