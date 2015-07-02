class ArticlesController < ApplicationController
  before_action  :find_article, only: [:show, :edit, :destroy, :update]
  skip_after_action :verify_policy_scoped
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @articles = policy_scope(Article)
  end

  def show
    authorize @article
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

  private
  def article_params
    params.require(:article).permit(:picture, :title, :content, :votes, :user_id)
  end

  def find_article
    @article = Article.find(params[:id])
  end

end
