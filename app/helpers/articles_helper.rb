module ArticlesHelper
  def article_find
    Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
