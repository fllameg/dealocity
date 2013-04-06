class CreateHerokus < ActiveRecord::Migration
  def change
    create_table :herokus do |t|
      t.string :logs

      t.timestamps
    end
  end
end
