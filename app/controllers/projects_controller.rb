class ProjectsController < ApplicationController
  before_action :setProject, only: [:index, :show]
  skip_before_action :authenticate_user!, only: [:index, :show, :create]

  def index
    @projects = Project.all
  end

  # def create
  # end

  def new
    @project = Project.new
  end

  # def update
  # end

  # def edit
  # end

  def show
  end

  # def destroy
  # end

  def setProject
    @project = Project.find(params[:id])
  end
end
