class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.array :tags
      t.array :entry

      t.timestamps null: false
    end
  end
end
