class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :emp_name
      t.string :emp_des

      t.timestamps null: false
    end
  end
end
