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

ActiveRecord::Schema.define(version: 20141110155354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lineitem_options", force: true do |t|
    t.integer "lineitem_id"
    t.integer "option_id"
  end

  add_index "lineitem_options", ["lineitem_id"], name: "index_lineitem_options_on_lineitem_id", using: :btree
  add_index "lineitem_options", ["option_id"], name: "index_lineitem_options_on_option_id", using: :btree

  create_table "lineitems", force: true do |t|
    t.decimal  "combined_price", precision: 5, scale: 2
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "options", force: true do |t|
    t.string   "name"
    t.decimal  "prics",      precision: 5, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "orders", force: true do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_options", force: true do |t|
    t.integer "product_id"
    t.integer "option_id"
  end

  add_index "product_options", ["option_id"], name: "index_product_options_on_option_id", using: :btree
  add_index "product_options", ["product_id"], name: "index_product_options_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price",       precision: 5, scale: 2
    t.integer  "category_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
