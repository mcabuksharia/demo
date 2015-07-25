class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :member_name
      t.string :member_bio

      t.timestamps null: false
    end
  end
end
