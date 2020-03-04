class CollectionsController < ApplicationController

    def index
        collections = Collection.all
        render json: collections, except: [:created_at, :updated_at], include: [:paintings]
    end


    def create 
        collection = Collection.new(collection_params)
        if collection.save
            render json: collection, except: [:created_at, :updated_at]
        else
            render json: {errors: collection.errors.full_messages}
      end
    end

    def show
        collection = Collection.find(params[:id])
        render json: collection, except: [:created_at, :updated_at]
    end

private
    def collection_params
        params.require(:collection).permit(:title, :user_id)
    end 

end
