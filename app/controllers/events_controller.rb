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
end
