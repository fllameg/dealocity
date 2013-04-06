class CreateRateddeals < ActiveRecord::Migration
  def change
    create_table :rateddeals do |t|
      t.string :store_name
      t.boolean :is_bar
      t.string :deal_name
      t.float :price
      t.string :day
      t.string :location
      t.boolean :thumbs_up

      t.timestamps
    end
  end
end
