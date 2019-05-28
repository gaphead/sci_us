class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

    def profile
    @user = User.find(params[:id])
    @projects = Project.all
  end
end
