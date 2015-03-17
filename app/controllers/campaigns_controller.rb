class CampaignsController < ApplicationController


  def index
    @campaigns
    if params[:status] 
      @campaigns = Campaign.where(status: params[:status])
    else
      @campaigns = Campaign.all.to_json   
    end
    
    
    #puts request.path
    if request.path == "/campaigns.json"
      render json: @campaigns
    else 
      puts "index"
	  @campaigns = Campaign.all
      render 'index'
    end
    
    
    
    #Maybe add json pretty rendering?
  end


  def show
    @campaign = Campaign.find(params[:id])
    @bookings = @campaign.bookings
    puts @bookings
    puts @campaign
  #  respond_to do |format|
  #    format.html
  #    format.json 
  #  end
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
