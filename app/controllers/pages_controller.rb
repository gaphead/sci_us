class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @projects = Project.all
    @homepage = true
  end

  def profile
    @user = User.find(params[:id])
    @projects = Project.all
  end
end
