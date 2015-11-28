class CreateDlyirrigations < ActiveRecord::Migration
  def change
    create_table :dlyirrigations do |t|
      t.date :date
      t.references :irriset
      t.references :section
      t.float :runhr
      t.float :arearun
      t.float :irricost
      t.float :rainfall
      t.text :remarks

      t.timestamps
    end
  end
end
