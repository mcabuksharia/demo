class AddRetilernoToRetailer < ActiveRecord::Migration
  def change
    add_column :retailers, :reatilerno, :integer
  end
end
