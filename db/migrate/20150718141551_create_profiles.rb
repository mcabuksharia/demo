class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :user_name
      t.string :user_des
      t.integer :user_mob

      t.timestamps null: false
    end
  end
end
