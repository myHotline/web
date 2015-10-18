class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.array :tags
      t.array :entry

      t.timestamps null: false
    end
  end
end
