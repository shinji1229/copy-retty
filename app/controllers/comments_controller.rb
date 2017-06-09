class CommentsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.create(comment_params)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :image, :rate).merge(restaurant_id: params[:restaurant_id])
  end

end
