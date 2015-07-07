class ProjectsCommentsController < ApplicationController
  before_action :find_project
  before_action :find_comment, only: [:edit, :update, :destroy]
  # skip_before_action :authenticate_user!, only: [:show]
  # skip_after_action :verify_authorized

  def index
    @comments = ProjectsComment.all
  end

  def edit

  end

  def update
    authorize @comment
    @comment.update(comments_params)

     if @comment.save
      respond_to do |format|
        format.html { redirect_to project_path(@project) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'projects/show' }
        format.js  # <-- idem
      end
    end
  end

  def create
    @comment = ProjectsComment.new(comments_params)
    @comment.project = @project
    authorize @comment

    # Same as @comment = @article.comments_articles.build(comments_params)
    # if @comment.save
    #   redirect_to article_path(@article)
    # else
    #   render 'articles/show'
    # end

     if @comment.save
      respond_to do |format|
        format.html { redirect_to project_path(@project) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'projects/show' }
        format.js  # <-- idem
      end
    end
  end



  def destroy
    authorize @comment
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to project_path(@project) }
      format.js
    end
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end

  def find_comment
    @comment = ProjectsComment.find(params[:id])
  end

  def comments_params
    params.require(:projects_comment).permit(:description, :user_id, :project_id)
  end

end
