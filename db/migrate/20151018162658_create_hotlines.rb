class CreateHotlines < ActiveRecord::Migration
  def change
    create_table :hotlines do |t|
      t.string :name
      t.string :number
      t.string :link
      t.string :donate
      t.string :category
      t.string :hours
      t.string :description

      t.timestamps null: false
    end
  end
end
