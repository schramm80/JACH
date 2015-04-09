class CampaignsController < ApplicationController


  def index
   # @campaigns  #ask lukas
   # puts "in status"

    if params[:type]
      @campaign_status = params[:type]
      @campaigns = Campaign.where(status: params[:type]).paginate(page: params[:page], per_page: 5)
    else
      @campaigns = Campaign.all.paginate(page: params[:page], per_page: 10)
    end

    respond_to do |format|
      format.html
      format.json { render json: @campaigns, root: false }
    end





  end


  def show
    @campaign = Campaign.find(params[:id])
    puts @campaign
    @bookings = @campaign.bookings
    respond_to do |format|
      format.html
      format.json { render json: @campaign, root: false }
    end

 end


  def home
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)

    @campaign.save
    redirect_to root_path
  end

  def edit
    @campaign = Campaign.find(params[:id])

  end

end
