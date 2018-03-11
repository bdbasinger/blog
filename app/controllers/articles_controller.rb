class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)

    # Returns a boolean indicating whether the article
    # was saved or not
    @article.save

    # Redirects the user to the show action which we'll define later
    redirect_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end



end


# 5.6 Ruby On Rails Tutorial
