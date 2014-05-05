class EventController < ApplicationController
	def index
		@events = Event.all
	end
	def show
		@event = Event.find(params[:id])
	end
	def edit
		@event = Event.find(params[:id])
	end
	def new 
		@new_event = Event.new
	end
	def create
		@new_event = Event.new
		if @new_event.save
			redirect_to events_path
		else
			redirect_to new_event_path
		end
	end
	def update
		@event = Event.find(params[:id])
		if @event.update_attributes(event_params)
			redirect_to event_path(@event)
		else
			redirect_to edit_event_path(@event)
		end
	end
	def destroy
	def event_params
		require.(:event).permit(:name, :location, :date)
	end

end