class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = article_find
  end


private

  def article_find
    Article.find(params[:id])
  end

end
