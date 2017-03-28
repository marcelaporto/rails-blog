class ArticlesController < ApplicationController

  include ArticlesHelper

  def index
    @articles = Article.all
  end

  def show
    @article = article_find
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    flash.notice = "Article '#{@article.title}' created!"

    redirect_to articles_path
  end

  def destroy
    @article = article_find
    @article.destroy

    flash.notice = "Article '#{@article.title}' deleted!"

    redirect_to articles_path
  end

  def edit
    @article = article_find
  end

  def update
    @article = article_find
    @article.update(article_params)

    flash.notice = "Article '#{@article.title}' updated!"

    redirect_to articles_path
  end


end
