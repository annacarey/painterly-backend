class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end
    
    def create 
        user = User.new(user_params)
        if user.save
            render json: user, except: [:created_at, :updated_at]
        else 
            render json: {errors: user.errors.full_messages}
        end
    end 

    def login 
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            render json: user, except: [:created_at, :updated_at]
        else
            render json: {errors: "Your password is incorrect"}
        end 
    end 

    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end 


end
