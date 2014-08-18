class BookRecommendation < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  belongs_to :book_list
  
  accepts_nested_attributes_for :book

end
