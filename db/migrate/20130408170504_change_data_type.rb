class ChangeDataType < ActiveRecord::Migration
  def self.up
    change_column :dealocity_deal, :phone, :string   
  end

  def self.down
    change_column :dealocity_deal, :phone, :integer
  end
end
