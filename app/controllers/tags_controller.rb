class TagsController < ApplicationController

  include TagsHelper


  def index
    @tags = Tag.all
  end

  def show
    @tag = tag_find
  end
end
