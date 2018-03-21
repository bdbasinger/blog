class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    # Returns a boolean indicating whether the article
    # was saved successfully or not.
    # Some conditions depending on the successful save
    # of the article depend on the validations provided
    # in app/models/article.rb
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end




# Started at 5.10 on Ruby on Rails Tutorial
