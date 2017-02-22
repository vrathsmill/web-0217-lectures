# == Schema Information
#
# Table name: authors
#
#  id   :integer          not null, primary key
#  name :string
#  age  :integer
#

class Author < ActiveRecord::Base
  has_many :posts
  
end
