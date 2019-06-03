class ProjectsController < ApplicationController
  before_action :setProject, only: [:show, :update, :destroy, :project_counter]
  skip_before_action :authenticate_user!, only: [:index, :show, :create]

  def index
    if params[:query].present?
      @projects = Project.search(params[:query])
    # elsif f.submit # check this line
    #   @projects = @proejcts.reject do |p|
    #     p.c =

    else
      @projects = Project.all
    end
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def new
    @project = Project.new
  end

  # def update
  # end

  # def edit
  # end

  def show
    @project = Project.find(params[:id])
  end

  def project_counter
    counter = UserCatagoryCounter.where("user_id = ? AND category = ?", current_user.id, @project.category).first

    if counter.nil?
      counter = UserCatagoryCounter.new(user_id: current_user.id, category: @project.category, counter: 0)
    end
    counter.counter += 1
    counter.save

    redirect_to @project.url
  end

  # def destroy
  # end
  private

  def project_params
    params.require(:project).permit(:name, :short_description, :long_description, :category, :url, :location, :organization, :photo, :photo_cache, :active, :org_description)
  end

  def counter_params
    params.require(:user_catagory_counter).permit(:user_id, :category)
  end

  def setProject
    @project = Project.find(params[:id])
  end
end
