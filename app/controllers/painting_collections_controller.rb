class PaintingCollectionsController < ApplicationController
    def create 
        painting_collection = PaintingCollection.create(painting_collection_params)
        render json: painting_collection, except: [:created_at, :updated_at]
    end 
    
    private 
    
    def painting_collection_params
        params.require(:painting_collection).permit(:painting_id, :collection_id)
    end 

end
