class PaintingsController < ApplicationController

def index
    paintings = Painting.all 
    render json: paintings
end

def create 
  painting = Painting.new(painting_params)
  if painting.save
    render json: painting, except: [:created_at, :updated_at]  
  else
    render json: {errors: painting.errors.full_messages}
  end
end 

private

def painting_params
  grid = params.require(:grid).map {|array| array}
  title = params.require(:painting).permit(:user_id, :title)[:title]
  user_id = params.require(:painting).permit(:user_id, :title)[:user_id]

  {:grid => grid, :title => title, :user_id =>  user_id }
end


end

# params.require(:rss).map do |p|
#     p.permit(:rss, :type)
#   end
