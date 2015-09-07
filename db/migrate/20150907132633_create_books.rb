class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string   "title"
      t.string   "author"
      t.string   "publisher"
      t.string   "published_date"
      t.text     "description"
      t.integer  "page_count"
      t.string   "category"
      t.string   "small_thumbnail"
      t.string   "thumbnail"
      t.integer  "isbn10", :limit => 8
      t.integer  "isbn13", :limit => 8
      t.decimal  "price"
      t.integer  "condition"
      t.text     "notes"
      t.timestamps null: false
    end
  end
end
