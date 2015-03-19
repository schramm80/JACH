class CampaignsController < ApplicationController


  def index
   # @campaigns  #ask lukas
    if params[:status] 
      @campaigns = Campaign.where(status: params[:status])
    else
      @campaigns = Campaign.all
    end
    
    respond_to do |format|
      format.html 
      format.json
    end
    
  end


  def show
    @campaign = Campaign.find(params[:id])
    @bookings = @campaign.bookings
    
  
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
