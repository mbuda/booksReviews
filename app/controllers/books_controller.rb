class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path, notice: 'Saved book'
    else
      render action: 'new'
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
