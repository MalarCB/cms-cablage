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

ActiveRecord::Schema.define(version: 20151115115336) do

  create_table "blogs", force: :cascade do |t|
    t.string   "user"
    t.text     "title"
    t.text     "content"
    t.string   "tags"
    t.integer  "likes"
    t.string   "category"
    t.string   "image"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "user"
    t.string   "email"
    t.string   "url"
    t.text     "message"
    t.integer  "blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["blog_id"], name: "index_comments_on_blog_id"

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.string   "email"
    t.string   "phone"
    t.text     "comments"
    t.string   "adress"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "ip_address"
    t.boolean  "status"
    t.boolean  "is_internal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
