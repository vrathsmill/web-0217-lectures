# == Schema Information
#
# Table name: post_tags
#
#  id      :integer          not null, primary key
#  post_id :integer
#  tag_id  :integer
#

class PostTag < ActiveRecord::Base
  belongs_to :post
  belongs_to :tag


end


