# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_22_034454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string "name", comment: "名称"
    t.text "desc", comment: "简介"
    t.bigint "created_user_id", comment: "创建人 ID"
    t.bigint "updated_user_id", comment: "修改人 ID"
    t.datetime "disabled_at", comment: "删除时间"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "elements", force: :cascade do |t|
    t.decimal "score", precision: 20, scale: 6, comment: "最终得分"
    t.bigint "line_id"
    t.bigint "post_id"
    t.bigint "created_user_id", comment: "创建人 ID"
    t.bigint "updated_user_id", comment: "修改人 ID"
    t.datetime "disabled_at", comment: "删除时间"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lines", force: :cascade do |t|
    t.string "name", comment: "标题"
    t.text "desc", comment: "说明"
    t.bigint "collection_id"
    t.bigint "created_user_id", comment: "创建人 ID"
    t.bigint "updated_user_id", comment: "修改人 ID"
    t.datetime "disabled_at", comment: "删除时间"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "marks", force: :cascade do |t|
    t.string "desc", comment: "评分理由"
    t.decimal "score", precision: 20, scale: 6, comment: "评分"
    t.bigint "element_id"
    t.bigint "created_user_id", comment: "创建人 ID"
    t.bigint "updated_user_id", comment: "修改人 ID"
    t.datetime "disabled_at", comment: "删除时间"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", comment: "标题"
    t.text "desc", comment: "说明"
    t.bigint "collection_id"
    t.integer "lines_count"
    t.integer "state", comment: "状态"
    t.bigint "created_user_id", comment: "创建人 ID"
    t.bigint "updated_user_id", comment: "修改人 ID"
    t.datetime "disabled_at", comment: "删除时间"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 100
    t.string "nickname", limit: 20
    t.string "code", limit: 6
    t.string "password_digest"
    t.bigint "created_user_id", comment: "创建人 ID"
    t.bigint "updated_user_id", comment: "修改人 ID"
    t.datetime "disabled_at", comment: "删除时间"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.text "object_changes"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

end
