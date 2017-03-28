module TagsHelper
  def tag_find
    Tag.find(params[:id])
  end
end
