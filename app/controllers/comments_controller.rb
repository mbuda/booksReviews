class CommentsController < ApplicationController
  def create
    @book = Book.find(params[:comment][:book_id])
    @review = Review.where('book_id = :book_id AND id = :review_id', params[:comment]).all.first
    @comment = @review.comments.new(comment_params)
    if current_user
      @comment.user_id = current_user.id
      if @comment.save
        redirect_to book_review_path(@book, @review),
          notice: 'Your comment is saved'
      end
    else
      redirect_to login_path,
        notice: 'You must be logged in to write comments'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end
end
