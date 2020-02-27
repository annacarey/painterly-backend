class UserController < ApplicationController
  
  def index
    users = User.all 
    render json: users
  end

  def create
    
  end

end
