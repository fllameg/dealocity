class CreateDealocityDeals < ActiveRecord::Migration
  def change
    create_table :dealocity_deals do |t|
      t.string :store_name
      t.boolean :is_bar
      t.string :deal_description
      t.float :price
      t.string :address
      t.string :city
      t.integer :phone
      t.float :rank

      t.timestamps
    end
  end
end
