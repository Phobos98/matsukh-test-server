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

ActiveRecord::Schema.define(version: 20160620084625) do

  create_table "devices", force: :cascade do |t|
    t.string   "model"
    t.string   "platform"
    t.string   "uuid"
    t.string   "version"
    t.string   "manufacturer"
    t.string   "serial"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "devices_messages", force: :cascade do |t|
    t.integer  "device_id"
    t.integer  "message_id"
    t.datetime "read_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "devices_messages", ["device_id"], name: "index_devices_messages_on_device_id"
  add_index "devices_messages", ["message_id"], name: "index_devices_messages_on_message_id"

  create_table "messages", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
