class Table < ActiveRecord::Base
  attr_accessible :address, :city, :deal_description, :is_bar, :phone, :store_name
end
