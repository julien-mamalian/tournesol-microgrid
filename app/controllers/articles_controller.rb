class ArticlesController < ApplicationController
  before_action  :find_article, only: [:show, :edit, :destroy, :update, :upvote]
  skip_after_action :verify_policy_scoped
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @articles = policy_scope(Article)
    @q = Article.ransack(params[:q])
    @people = @q.result(distinct: true)

    @search = Article.search(params[:q])
    @articles = @search.result
  end


  def show
    authorize @article
    @comment = CommentsArticle.new
  end

  def new
    @article = Article.new
    authorize @article
  end

  def create
    @article = current_user.articles.build(article_params)
    @article.save

    authorize @article
    redirect_to root_path
  end

  def edit
    authorize @article
  end

  def update
    authorize @article
    @article.update(article_params)
    redirect_to root_path
  end

  def destroy
    authorize @article
    @article.destroy
    redirect_to :back
  end

  def upvote
    authorize @article
    @article = Article.find(params[:id])
    @article.upvote_by current_user
    redirect_to :back
  end

  private

  def article_params
    params.require(:article).permit(:picture, :title, :content, :votes, :user_id)
  end

  def find_article
    @article = Article.find(params[:id])
  end

end
