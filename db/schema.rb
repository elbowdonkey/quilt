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

ActiveRecord::Schema.define(version: 20140918040641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  create_table "frames", force: true do |t|
    t.integer  "artist_id"
    t.text     "rules"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "layers", force: true do |t|
    t.string   "type"
    t.integer  "patch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patches", force: true do |t|
    t.integer  "frame_id"
    t.integer  "artist_id"
    t.integer  "x"
    t.integer  "y"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pixels", force: true do |t|
    t.integer  "x"
    t.integer  "y"
    t.integer  "r"
    t.integer  "g"
    t.integer  "b"
    t.decimal  "a"
    t.integer  "layer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
