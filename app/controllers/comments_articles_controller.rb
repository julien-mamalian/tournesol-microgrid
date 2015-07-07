class CommentsArticlesController < ApplicationController
  before_action :find_article
  before_action :find_comment, only: [:edit, :update, :destroy]
  skip_after_action :verify_authorized
  skip_before_action :verify_policy_scoped
  # skip_before_action :authenticate_user!, only: [:show]
  # skip_after_action :verify_authorized

  def index
    @comments = CommentsArticle.all
  end

  def edit

  end

  def update
    authorize @comment
    @comment.update(comments_params)

     if @comment.save
      respond_to do |format|
        format.html { redirect_to article_path(@article) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'articles/show' }
        format.js  # <-- idem
      end
    end
  end

  def create
    @comment = CommentsArticle.new(comments_params)
    @comment.article = @article
    authorize @comment

    # Same as @comment = @article.comments_articles.build(comments_params)
    # if @comment.save
    #   redirect_to article_path(@article)
    # else
    #   render 'articles/show'
    # end

     if @comment.save
      respond_to do |format|
        format.html { redirect_to article_path(@article) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'articles/show' }
        format.js  # <-- idem
      end
    end
  end



  def destroy
    authorize @comment
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to article_path(@article) }
      format.js
    end
  end

  def upvote
    @comment = CommentsArticle.find(params[:id])
    @comment.upvote_by current_user
    redirect_to :back
  end

  private

  def find_article
    @article = Article.find(params[:article_id])
  end

  def find_comment
    @comment = CommentsArticle.find(params[:id])
  end

  def comments_params
    params.require(:comments_article).permit(:description, :date_creation, :user_id, :article_id)
  end

end
