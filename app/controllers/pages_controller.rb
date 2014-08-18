class PagesController < ApplicationController
  def index
    @luminary = User.first
    @luminarys_book_list = @luminary.book_lists.first
  end

  def about
  end
end
