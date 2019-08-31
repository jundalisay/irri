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

ActiveRecord::Schema.define(version: 2019_08_31_023956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coconut1s", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "crop_id"
    t.integer "year"
    t.integer "month"
    t.float "temperature"
    t.integer "flower"
    t.integer "maturity"
    t.string "photo"
    t.float "height"
    t.float "yield"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crop_id"], name: "index_coconut1s_on_crop_id"
    t.index ["user_id"], name: "index_coconut1s_on_user_id"
  end

  create_table "coffee1s", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "crop_id"
    t.integer "year"
    t.integer "month"
    t.float "temperature"
    t.integer "flower"
    t.integer "maturity"
    t.string "photo"
    t.float "height"
    t.float "yield"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crop_id"], name: "index_coffee1s_on_crop_id"
    t.index ["user_id"], name: "index_coffee1s_on_user_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "crops", force: :cascade do |t|
    t.bigint "country_id"
    t.bigint "province_id"
    t.bigint "category_id"
    t.string "shortname"
    t.string "name"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_crops_on_category_id"
    t.index ["country_id"], name: "index_crops_on_country_id"
    t.index ["province_id"], name: "index_crops_on_province_id"
  end

  create_table "plants", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "country_id"
    t.bigint "province_id"
    t.bigint "category_id"
    t.string "shortname"
    t.string "name"
    t.integer "flower"
    t.integer "maturity"
    t.float "height"
    t.float "yield"
    t.string "photo"
    t.string "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_plants_on_category_id"
    t.index ["country_id"], name: "index_plants_on_country_id"
    t.index ["province_id"], name: "index_plants_on_province_id"
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.bigint "country_id"
    t.string "name"
    t.string "shortname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_provinces_on_country_id"
  end

  create_table "ratios", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "country_id"
    t.bigint "province_id"
    t.bigint "category_id"
    t.integer "year"
    t.integer "month"
    t.float "temperature"
    t.string "shortname"
    t.string "name"
    t.integer "flower"
    t.integer "maturity"
    t.string "photo"
    t.float "height"
    t.float "yield"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_ratios_on_category_id"
    t.index ["country_id"], name: "index_ratios_on_country_id"
    t.index ["province_id"], name: "index_ratios_on_province_id"
    t.index ["user_id"], name: "index_ratios_on_user_id"
  end

  create_table "rice1s", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "crop_id"
    t.integer "year"
    t.integer "month"
    t.float "temperature"
    t.integer "flower"
    t.integer "maturity"
    t.string "photo"
    t.float "height"
    t.float "yield"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crop_id"], name: "index_rice1s_on_crop_id"
    t.index ["user_id"], name: "index_rice1s_on_user_id"
  end

  create_table "rice2s", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "crop_id"
    t.integer "year"
    t.integer "month"
    t.float "temperature"
    t.integer "flower"
    t.integer "maturity"
    t.string "photo"
    t.float "height"
    t.float "yield"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crop_id"], name: "index_rice2s_on_crop_id"
    t.index ["user_id"], name: "index_rice2s_on_user_id"
  end

  create_table "rice3s", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "crop_id"
    t.integer "year"
    t.integer "month"
    t.float "temperature"
    t.integer "flower"
    t.integer "maturity"
    t.string "photo"
    t.float "height"
    t.float "yield"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crop_id"], name: "index_rice3s_on_crop_id"
    t.index ["user_id"], name: "index_rice3s_on_user_id"
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

  add_foreign_key "coconut1s", "crops", on_delete: :nullify
  add_foreign_key "coconut1s", "users", on_delete: :nullify
  add_foreign_key "coffee1s", "crops", on_delete: :nullify
  add_foreign_key "coffee1s", "users", on_delete: :nullify
  add_foreign_key "crops", "categories", on_delete: :nullify
  add_foreign_key "crops", "countries", on_delete: :nullify
  add_foreign_key "crops", "provinces", on_delete: :nullify
  add_foreign_key "plants", "categories", on_delete: :nullify
  add_foreign_key "plants", "countries", on_delete: :nullify
  add_foreign_key "plants", "provinces", on_delete: :nullify
  add_foreign_key "plants", "users", on_delete: :nullify
  add_foreign_key "provinces", "countries", on_delete: :nullify
  add_foreign_key "ratios", "categories", on_delete: :nullify
  add_foreign_key "ratios", "countries", on_delete: :nullify
  add_foreign_key "ratios", "provinces", on_delete: :nullify
  add_foreign_key "ratios", "users", on_delete: :nullify
  add_foreign_key "rice1s", "crops", on_delete: :nullify
  add_foreign_key "rice1s", "users", on_delete: :nullify
  add_foreign_key "rice2s", "crops", on_delete: :nullify
  add_foreign_key "rice2s", "users", on_delete: :nullify
  add_foreign_key "rice3s", "crops", on_delete: :nullify
  add_foreign_key "rice3s", "users", on_delete: :nullify
end
