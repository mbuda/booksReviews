class ReviewsController < ApplicationController
  before_action :book, except: [:index]

  def index
    @reviews = Review.all
  end

  def new
    @review = @book.reviews.build
  end

  def create
    @review = @book.reviews.new(review_params)
    if @review.save
      redirect_to root_url, notice: 'Saved review'
    else
      render action: 'new'
    end
  end

  private
  def review_params
      params.require(:review).permit(:title, :description)
  end

  def book
    @book = Book.find(params[:book_id])
  end
end
