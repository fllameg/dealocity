class DealocityDeal < ActiveRecord::Base
  attr_accessible :address, :city, :deal_description, :is_bar, :phone, :price, :rank, :store_name
end
