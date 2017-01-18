class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :name
      t.integer :part_no

      t.timestamps null: false
    end
  end
end