class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.references :hotline, polymorphic: true, index: true, array: true, default: []

      t.timestamps null: false
    end
  end
end
