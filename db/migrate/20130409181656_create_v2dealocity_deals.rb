class CreateV2dealocityDeals < ActiveRecord::Migration
  def change
    create_table :v2dealocity_deals do |t|
      t.string :store_name
      t.boolean :is_bar
      t.string :deal_description
      t.string :address
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
