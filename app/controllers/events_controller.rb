class EventsController < ApplicationController
  def events
      @event = Event.all
      respond_to do |format|
        format.json {
          render json:
          @event.to_json(
            only: [:title, :start, :end]
          )
        }
      end
  end

  def new
    @user = User.find(params[:user_id])
    @event = Event.new
  end

  def create
    @event = current_user.events.new(event_params)
    if @event.save
      redirect_to user_path(current_user)
    end
  end

  private
  def event_params
    params.require(:event).permit(:title, :start, :end).merge(user_id: params[:user_id])
  end

end
