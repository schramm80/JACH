class BookingsController < ApplicationController

  def index
    @bookings = Booking.all.to_json
    
    
    respond_to do |format|
      format.html 
      format.json
    end
    
  end


end
