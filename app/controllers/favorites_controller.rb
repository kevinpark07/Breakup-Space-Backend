class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    def create
        favorite = Favorite.create(favorite_params)
         
        if favorite.save
            render json: favorite
        else
            render json: {error: favorite.errors.full_messages}, status: :not_acceptable
        end
    end


    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy

        render json: favorite
    end

    private
    
    def favorite_params
        params.require(:favorite).permit(:breakup_message_id, :user_id)
    end


end
