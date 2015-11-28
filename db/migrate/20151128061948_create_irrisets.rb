class CreateIrrisets < ActiveRecord::Migration
  def change
    create_table :irrisets do |t|
      t.string :setname
      t.string :motordet
      t.integer :motorhp
      t.integer :gpm
      t.string :fuel
      t.float :fuelperhr
      t.references :location, index: true

      t.timestamps
    end
  end
end
