class ChangeDataType < ActiveRecord::Migration
  def self.up
    change_column :dealocity_deals, :phone, :string   
  end

  def self.down
    change_column :dealocity_deals, :phone, :integer
  end
end
