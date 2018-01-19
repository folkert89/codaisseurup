class BookingsController < ApplicationController
  before_action :load_event, :authenticate_user!

 def create
   @booking = current_user.bookings.create(booking_params.merge({
    event:  @event }))

   redirect_to @booking.event, notice: "Thank you for booking!"
 end

 private

 def booking_params
   params.require(:booking).permit(:starts_at, :ends_at, :total)
 end

 def load_event
   @event = Event.find(params[:event_id])
 end
end
