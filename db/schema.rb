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

ActiveRecord::Schema.define(version: 2018_09_26_170633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", primary_key: "name", id: :string, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "factor_name"
    t.float "factor_x", array: true
    t.float "factor_y", array: true
  end

  create_table "tags_tovars", primary_key: ["tag_id", "tovar_id"], force: :cascade do |t|
    t.string "tag_id", null: false
    t.integer "tovar_id", null: false
  end

  create_table "tovars", force: :cascade do |t|
    t.string "name"
    t.string "article"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "hidden"
    t.integer "group_id"
  end

  add_foreign_key "tags_tovars", "tags", primary_key: "name", name: "fk_tags_tovars_tags"
  add_foreign_key "tags_tovars", "tovars", name: "fk_tags_tovars_tovars"
  add_foreign_key "tovars", "groups", name: "fk_tovars_groups"
end
