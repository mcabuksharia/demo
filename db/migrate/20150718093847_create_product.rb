class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :prod_name
      t.string :prod_desc
    end
  end
end
