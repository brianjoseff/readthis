class BookListsController < ApplicationController
  def new
    @book_list = BookList.new

      bookrec = @book_list.book_recommendations.build
      bookrec.build_book
    end

 


  def create
    @book_list = BookList.new(book_list_params)

    respond_to do |format|
      if @book_list.save
        format.html { redirect_to @book_list, notice: 'Book List was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @book_list.errors, status: :unprocessable_entity }
      end
    end
  end 
  
  
  
  
  def book_list_params
     params.require(:book_list).permit(:name, book_recommendations_attributes: [ :book_list_id, :user_id,:blurb, books_attributes: [:title, :link, :description]])
   end
end
