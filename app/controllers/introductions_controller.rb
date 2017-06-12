class IntroductionsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @introduction = Introduction.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @introduction = Introduction.create(introduction_params)
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def introduction_params
    params.require(:introduction).permit(:body, :title).merge(restaurant_id: params[:restaurant_id])
  end
end
