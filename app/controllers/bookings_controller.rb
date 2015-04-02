class BookingsController < ApplicationController

  def index
    @bookings = Booking.all.paginate(page: params[:page], per_page: 20)

    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @sosial_madia_profile = SocialMediaProfile.find(params[:id])
    @booking = Booking.find(params[:id])
    puts @booking

    respond_to do |format|
      format.html
      format.json
    end

 end



end
