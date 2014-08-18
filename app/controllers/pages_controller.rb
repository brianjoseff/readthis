class PagesController < ApplicationController
  def index
    @luminary = User.first
    unless @luminary.nil?
      @luminarys_book_list = @luminary.book_lists.first
    end
  end

  def about
  end
end
