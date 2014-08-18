class BookList < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :category
  has_many :book_recommendations
  
  accepts_nested_attributes_for :book_recommendations, allow_destroy: true
  
end
