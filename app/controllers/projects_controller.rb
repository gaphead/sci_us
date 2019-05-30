class ProjectsController < ApplicationController
  before_action :setProject, only: [:show, :update, :destroy]
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

  # def destroy
  # end
  private

  def project_params
    params.require(:project).permit(:name, :short_description, :long_description, :url, :location, :organization, :photo, :photo_cache, :active, :org_description)
  end

  def setProject
    @project = Project.find(params[:id])
  end
end
