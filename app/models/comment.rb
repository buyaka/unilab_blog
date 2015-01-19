class Comment < ActiveRecord::Base
  attr_accessible :comment, :name, :post_id
end
