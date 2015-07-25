class RemoveColumnsToProduct < ActiveRecord::Migration
  def change
    remove_column :products, :prod_code, :integer
  end
end
