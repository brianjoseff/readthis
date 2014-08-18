class AddBookListIdToBookRecommendation < ActiveRecord::Migration
  def change
    add_column :book_recommendations, :book_list_id, :integer
  end
end
