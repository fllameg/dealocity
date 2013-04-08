class CreateListOfDeals < ActiveRecord::Migration
  def change
    create_table :list_of_deals do |t|
      t.string :store_name
      t.boolean :is_bar
      t.string :deal_name
      t.string :price
      t.string :day
      t.string :address
      t.string :city
      t.boolean :thumbs_up

      t.timestamps
    end
  end
end
