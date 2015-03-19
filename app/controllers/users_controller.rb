class UsersController < ApplicationController

  def index
    @users = User.all.to_json
    
    respond_to do |format|
      format.html 
      format.json
    end
    
  end

  def show
    id = (params[:id])
   @user = User.find(id)
   @social_media_profile = SocialMediaProfile.where(user_id: id)
   # to do URL logic
   @res = {user: @user, social_media_profile: @social_media_profile}
   render json: @res
 end

end
