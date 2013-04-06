class ListOfDeal < ActiveRecord::Base
  attr_accessible :address, :city, :day, :deal_name, :is_bar, :price, :store_name, :thumbs_up
end
