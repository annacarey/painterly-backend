class PaintingsController < ApplicationController

def index
    paintings = Painting.all 
    render json: paintings
end

def create
    painting = Painting.create(painting_params)
    # byebug
    render json: painting
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
