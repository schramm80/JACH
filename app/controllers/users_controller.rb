class UsersController < ApplicationController

  def index
    @users = User.all.to_json
    
    if request.path == "/users.json"
      render json: @users
    else 
      render 'index'
    end
    
    #Maybe add json pretty rendering?
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
