class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.references :location, index: true

      t.timestamps
    end
  end
end
