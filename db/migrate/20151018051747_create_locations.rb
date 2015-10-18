class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :province
      t.string :country
      t.references :area, polymorphic: true, index: true, array: true, default: []
      t.timestamps null: false
    end
  end
end
