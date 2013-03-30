class Deal < ActiveRecord::Base
  attr_accessible :day, :deal_name, :location, :price, :store_name
end
