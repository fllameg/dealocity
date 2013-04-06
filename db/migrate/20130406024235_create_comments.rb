class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :store_name
      t.string :deal_name
      t.boolean :thumbs_up
      t.text :comments

      t.timestamps
    end
  end
end
