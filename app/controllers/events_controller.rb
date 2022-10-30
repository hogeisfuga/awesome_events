class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event, notice: "作成しました"
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def destroy
  end

  private 
  
  def event_params
    params.require(:event).permit(
      :name, :place, :content, :start_at, :end_at
    )
  end
end
