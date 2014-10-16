class CommentsController < ApplicationController
  def create
    @book = Book.find(params[:comment][:book_id])
    @review = Review.where('book_id = :book_id AND id = :review_id', params[:comment]).all.first
    @comment = @review.comments.new(comment_params)
    if @comment.save
      redirect_to book_review_path(@book, @review)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end
end
