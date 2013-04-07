class CreateDealocityComments < ActiveRecord::Migration
  def change
    create_table :dealocity_comments do |t|
      t.string :store_name
      t.float :rating
      t.string :person_name
      t.text :comment

      t.timestamps
    end
  end
end
