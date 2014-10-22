class ReviewsController < ApplicationController
  before_action :book, except: [:index]
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_filter :authorize, except: [:index, :show]

  def index
    @reviews = Review.all
  end

  def show
    @comment = Comment.new
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

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to @book, notice: 'Review updated'
    else
      render action: 'edit'
    end
  end

  def destroy
    @review.destroy
    redirect_to reviews_url, notice: 'Review deleted'
  end

  private
  def review_params
      params.require(:review).permit(:title, :description)
  end

  def book
    @book = Book.find(params[:book_id])
  end

  def set_review
    @review = @book.reviews.find(params[:id])
  end
end
