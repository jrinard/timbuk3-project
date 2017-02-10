
ActiveRecord::Schema.define(version: 20170210160304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "origin"
    t.integer  "cost"
    t.string   "style"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
