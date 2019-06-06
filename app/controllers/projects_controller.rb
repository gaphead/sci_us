class ProjectsController < ApplicationController
  before_action :setProject, only: [:show, :update, :destroy, :project_counter]
  skip_before_action :authenticate_user!, only: [:index, :show, :create]

  def index
    if params[:query].present?
      @projects = Project.search_by_descrptions_name_and_category(params[:query])
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
      @user.researcher_status = true
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
    @donation_progress = ((@project.current_funding / @project.desired_funding.to_f)*100).to_i
  end

  def project_counter
    counter = UserCategoryCounter.where("user_id = ? AND category = ?", current_user.id, @project.category).first

    if counter.nil?
      counter = UserCategoryCounter.new(user_id: current_user.id, category: @project.category, counter: 0)
    end
    counter.counter += 1
    counter.save

    if counter.counter == 1
      redirect_to @project.url, flash: {
        message: "You just got an achievment in the #{counter.category} catagory",
        category: counter.category
      }
    else
      redirect_to @project.url
    end
  end

  # def destroy
  # end
  private

  def project_params
    params.require(:project).permit(:name, :short_description, :long_description, :category, :url, :location, :organization, :photo, :photo_cache, :active, :org_description)
  end

  def counter_params
    params.require(:user_category_counter).permit(:user_id, :category)
  end

  def setProject
    @project = Project.find(params[:id])
  end
end
