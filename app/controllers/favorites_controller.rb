class FavoritesController < ApplicationController
before_action :setFavorite

  def index
    # if current_user != null
    #   @user = current_user
    #   @favorites = Favorite.all.where(...)
    # end
  end



  def setFavorite
    @favorite = Favorite.find(params[:id])
  end
end
