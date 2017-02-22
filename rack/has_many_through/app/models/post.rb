# == Schema Information
#
# Table name: posts
#
#  id        :integer          not null, primary key
#  title     :string
#  content   :string
#  author_id :integer
#

class Post < ActiveRecord::Base
  belongs_to :author
  has_many :post_tags
  has_many :tags, through: :post_tags
  
  def summary
    content = self.content
    sentences = content.split(".")
    sentences[0..1].join(". ") + "..."
  end

end
