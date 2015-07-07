class ProjectsController < ApplicationController
  before_action  :find_project, only: [:show, :edit, :destroy, :update]
  skip_after_action :verify_policy_scoped
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @projects = policy_scope(Project)
  end

  def show
    authorize @project
    @comment = ProjectsComment.new
  end

  def new
    @project = Project.new
    authorize @project
  end

  def create
    @project = current_user.projects.build(project_params)
    @project.save

    authorize @project
    redirect_to root_path
  end

  def edit
    authorize @project
  end

  def update
    authorize @project
    @project.update(project_params)
    redirect_to root_path
  end

  def destroy
    authorize @project
    @project.destroy
    redirect_to :back
  end

  private

  def project_params
    params.require(:project).permit(:description, :project_advancement, :picture, :title, :content, :user_id, :city, :country, :datecreation, :area)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
