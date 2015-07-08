class ProjectsController < ApplicationController
  before_action  :find_project, only: [:show, :edit, :destroy, :update, :upvote]
  skip_after_action :verify_policy_scoped
  skip_before_action :authenticate_user!, only: [:index, :show]

  def upvote
    authorize @project
    @project = Project.find(params[:id])
    @project.upvote_by current_user
    redirect_to :back
  end

  def index
    @projects = policy_scope(Project)
    @q = Project.ransack(params[:q])
    @people = @q.result(distinct: true)

    @search = Project.search(params[:q])
    @projects = @search.result
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
