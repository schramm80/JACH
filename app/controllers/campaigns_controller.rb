class CampaignsController < ApplicationController


def index
  @campaigns = Campaign.all.to_json
  render json: @campaigns
  
  #Maybe add json pretty rendering?
end



def show
 @campaign = Campaign.find(params[:id])
 render json: @campaign
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
