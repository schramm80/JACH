class BookingsController < ApplicationController

def index
  @bookings = Booking.all.to_json
  render json: @bookings
  
  #Maybe add json pretty rendering?
end


end
