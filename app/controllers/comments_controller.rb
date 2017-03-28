class CommentsController < ApplicationController
  include CommentsHelper

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.save

    flash.notice = "Comment added!"

    redirect_to article_path(@comment.article) # !!!!!! we can find the Article associated by calling @comment.article

  end

end
