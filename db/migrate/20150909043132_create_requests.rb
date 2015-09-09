class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.timestamps null: false
    end
    add_reference :requests, :user, index: true, foreign_key: true
    add_reference :requests, :book, index: true, foreign_key: true
  end
end
