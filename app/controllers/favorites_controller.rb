class FavoritesController < ApplicationController

  def index
    # if current_user != nil
    #   @user = current_user
    #   @favorites = Favorite.all.where(...)
    # end
  end

  def toggle
    @project = Project.find(params[:project_id].to_i)
    # raise

    if current_user.has_favorited?(@project)
      @favorite = Favorite.find_by(user_id: current_user.id, project_id: params[:project_id].to_i)
      @favorite.destroy
    else
      @favorite = Favorite.new
      @favorite.user_id = current_user.id
      @favorite.project_id = params[:project_id].to_i
      @favorite.save
    end
    # redirect_to projects_path
  end

  # def setFavorite
  #   @favorite = Favorite.find(params[:id])
  # end
end
