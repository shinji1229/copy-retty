class CommentsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @comment = Comment.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to restaurant_path(@restaurant)
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @comment = Comment.find(params[:id])
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
