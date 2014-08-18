class CreateBookRecommendations < ActiveRecord::Migration
  def change
    create_table :book_recommendations do |t|
      t.integer :user_id
      t.integer :book_id
      t.text :blurb

      t.timestamps
    end
  end
end
