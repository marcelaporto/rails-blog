class Article < ApplicationRecord
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings


  def tag_list
    tags.map{|tag| tag.name}.join(", ")
  end

  def tag_list=(tags_string)
    tag_arr = tags_string.split(',').collect{|tag| tag.strip.downcase}.uniq
    tag_object_arr = tag_arr.map {|tagname| Tag.find_or_create_by(name: tagname) }
    self.tags = tag_object_arr
  end
end
