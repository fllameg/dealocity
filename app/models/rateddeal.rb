class Rateddeal < ActiveRecord::Base
  attr_accessible :day, :deal_name, :is_bar, :location, :price, :store_name, :thumbs_up
end
