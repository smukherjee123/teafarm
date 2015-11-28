class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :prefix
      t.string :name

      t.timestamps
    end
  end
end
