class CreateBookLists < ActiveRecord::Migration
  def change
    create_table :book_lists do |t|
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
