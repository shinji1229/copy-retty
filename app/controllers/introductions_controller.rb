class IntroductionsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @introduction = Introduction.new
  end

  def create
    # @introduction = current_user.comments.create(comment_params)
  end

  def edit
  end

  def update
  end

  def delete
  end
end