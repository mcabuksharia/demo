class AddColumnsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :prod_code, :integer
  end
end
