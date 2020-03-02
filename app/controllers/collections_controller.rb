class CollectionsController < ApplicationController

    def index
        collections = Collection.all 
        render json: collections
    end


    def create 
        collection = Collection.create(collection_params)
        render json: collection
    end

    def show
        collection = Collection.find_by(params[:id])
        render json: collection
    end

private
    def collection_params
        params.permit(:title, :user_id)
    end 

end
