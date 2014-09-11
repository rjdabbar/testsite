# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140911155928) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "projects", force: true do |t|
    t.string   "title"
    t.string   "headline"
    t.text     "body"
    t.text     "client"
    t.text     "agency"
    t.text     "partner"
    t.text     "excerpt"
    t.string   "main_image"
    t.string   "thumbnail_lrg"
    t.text     "thumbnail_smcategory"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "main_image_file_name"
    t.string   "main_image_content_type"
    t.integer  "main_image_file_size"
    t.datetime "main_image_updated_at"
    t.string   "thumbnail_lrg_file_name"
    t.string   "thumbnail_lrg_content_type"
    t.integer  "thumbnail_lrg_file_size"
    t.datetime "thumbnail_lrg_updated_at"
    t.string   "thumbnail_smcategory_file_name"
    t.string   "thumbnail_smcategory_content_type"
    t.integer  "thumbnail_smcategory_file_size"
    t.datetime "thumbnail_smcategory_updated_at"
  end

end
