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

ActiveRecord::Schema.define(version: 20160718190704) do

  create_table "recusals", force: :cascade do |t|
    t.integer  "reviewer_id"
    t.integer  "candidate_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["candidate_id"], name: "index_recusals_on_candidate_id"
    t.index ["reviewer_id"], name: "index_recusals_on_reviewer_id"
  end

  create_table "role_policies", force: :cascade do |t|
    t.integer  "administrator_role_id"
    t.integer  "managed_role_id"
    t.string   "within"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["administrator_role_id"], name: "index_role_policies_on_administrator_role_id"
    t.index ["managed_role_id"], name: "index_role_policies_on_managed_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "rank"
    t.boolean  "admin"
    t.boolean  "candidate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "role_id"
    t.boolean  "pdf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_sections_on_role_id"
  end

  create_table "units", force: :cascade do |t|
    t.integer  "school_id"
    t.string   "name"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_units_on_school_id"
  end

  create_table "uploads", force: :cascade do |t|
    t.string   "name"
    t.integer  "rank"
    t.integer  "user_id"
    t.integer  "section_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.index ["section_id"], name: "index_uploads_on_section_id"
    t.index ["user_id"], name: "index_uploads_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.integer  "unit_id"
    t.integer  "school_id"
    t.boolean  "has_dossier"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["school_id"], name: "index_user_roles_on_school_id"
    t.index ["unit_id"], name: "index_user_roles_on_unit_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "netid"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
