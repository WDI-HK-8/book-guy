class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string   "title"
      t.string   "author"
      t.string   "publisher_name"
      t.string   "edition_info"
      t.string   "cover_image_url"
      t.text     "summary"
      t.integer  "isbn10", :limit => 8
      t.integer  "isbn13", :limit => 8
      t.decimal  "price"
      t.integer  "condition"
      t.string   "category"
      t.text     "notes"
      t.timestamps null: false
    end
  end
end
