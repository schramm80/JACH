class UsersController < ApplicationController

  def index
    @users = User.all.to_json
    render json: @users
    
    #Maybe add json pretty rendering?
  end


end
