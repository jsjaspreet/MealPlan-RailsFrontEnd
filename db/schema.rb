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

ActiveRecord::Schema.define(version: 20140907005733) do

  create_table "meal_plan_schedules", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_items", force: true do |t|
    t.string   "itemName"
    t.string   "servingTime"
    t.string   "sodium"
    t.string   "carb"
    t.string   "fat"
    t.string   "calorie"
    t.string   "cholesterol"
    t.string   "protein"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menu_items", ["location"], name: "index_menu_items_on_location"
  add_index "menu_items", ["servingTime"], name: "index_menu_items_on_servingTime"

end
