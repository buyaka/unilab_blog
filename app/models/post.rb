class Post < ActiveRecord::Base
  attr_accessible :name, :note
  
  has_many :comments
  
end
