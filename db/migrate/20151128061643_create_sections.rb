class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.float :area
      t.string :div
      t.references :location, index: true

      t.timestamps
    end
  end
end
