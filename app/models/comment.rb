class Comment < ActiveRecord::Base
  attr_accessible :comments, :deal_name, :store_name, :thumbs_up
end
