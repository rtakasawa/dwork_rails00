ActiveRecord::Schema.define(version: 2020_02_28_053903) do

  enable_extension "plpgsql"

  create_table "notes", force: :cascade do |t|
    t.string "content"
  end

end
