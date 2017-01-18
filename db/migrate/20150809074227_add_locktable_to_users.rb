class AddLocktableToUsers < ActiveRecord::Migration
  def change
    add_column :users, :failed_attempt, :integer
    add_column :users, :unlock_token, :string
    add_column :users, :locked_at, :datetime
  end
end
