class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :store_name
      t.string :deal_name
      t.string :day
      t.string :location
      t.float :price

      t.timestamps
    end
  end
end
