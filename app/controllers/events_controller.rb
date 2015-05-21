class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to calendar_path
    else
      render :new
    end
  end

private

  def event_params
    params.require(:event).permit(:name, :ocurrs_on)
  end
end
