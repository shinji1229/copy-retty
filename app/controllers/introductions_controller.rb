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
    @restaurant = Restaurant.find(params[:restaurant_id])
    @introduction = Introduction.new
  end

  def update
    binding.pry
    @restaurant = Restaurant.find(params[:restaurant_id])
    @introduction = Introduction.update(introduction_params)
    redirect_to restaurant_path(@restaurant)
  end

  private
  def introduction_params
    params.require(:introduction).permit(:body, :title, :image).merge(restaurant_id: params[:restaurant_id])
  end
end
