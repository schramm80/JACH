class UsersController < ApplicationController

def index
  @users = Users.all.to_json
  render json: @users
  
  #Maybe add json pretty rendering?
end


end
