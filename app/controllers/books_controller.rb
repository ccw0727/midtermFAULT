class BooksController < ApplicationController
  def index 
    @books=Book.all
  end
  
  def new
    @book=Book.new
  end
  
  
  def create
    @book = Book.new(book_params)
    if @book.save
       redirect_to books_path
    else
      render 'new'
    end  
  end
  
  def edit
  end
  
  
   def book_params
    params.require("book").permit(:title, :intro, :author, :price)
  end
end
