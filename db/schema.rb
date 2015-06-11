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

ActiveRecord::Schema.define(version: 20150610004024) do

  create_table "abouts", force: true do |t|
    t.text     "message"
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accounts", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "administrations", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "censors", force: true do |t|
    t.string   "word"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drinks", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "category"
    t.string   "sub_category"
    t.float    "price_12oz"
    t.float    "price_16oz"
    t.float    "price_20oz"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.float    "price_8oz"
  end

  create_table "foods", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "category"
    t.float    "price"
    t.float    "alt_price"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "price_label"
    t.string   "alt_price_label"
    t.string   "lunch_category"
  end

  create_table "layout_pictures", force: true do |t|
    t.string   "position"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.text     "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "position"
    t.integer  "polaroid"
  end

  create_table "reviews", force: true do |t|
    t.string   "author"
    t.text     "content"
    t.integer  "rating"
    t.string   "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: true do |t|
    t.string   "name"
    t.date     "hired"
    t.text     "bio"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "treats", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
