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

ActiveRecord::Schema.define(version: 20170426044532) do

  create_table "admins", force: :cascade do |t|
    t.string   "adminid"
    t.string   "password"
    t.string   "fname"
    t.string   "lname"
    t.datetime "lastlogin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notices", force: :cascade do |t|
    t.string   "adminid"
    t.text     "title"
    t.datetime "date"
    t.datetime "expiry"
    t.text     "text"
    t.text     "newstype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "Username"
    t.string   "Password"
    t.string   "First_Name"
    t.string   "Last_Name"
    t.string   "Gender"
    t.string   "Email"
    t.string   "Mobile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
