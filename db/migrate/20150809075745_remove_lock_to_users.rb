class RemoveLockToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :failed_attempt, :integer
  end
end
