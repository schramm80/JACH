class CampaignsController < ApplicationController


  def index
    @campaigns = Campaign.all.to_json
    #puts request.path
    if request.path == "/campaigns.json"
      render json: @campaigns
    else 
      render 'index'
    end
    
    #Maybe add json pretty rendering?
  end


  def show
    @campaign = Campaign.find(params[:id])
    @bookings = @campaign.bookings
    
    respond_to do |format|
      format.html
      format.json { render :json => @campaign.to_json }
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