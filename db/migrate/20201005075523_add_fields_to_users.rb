class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :blood_group, :string
    add_column :users, :height, :string
    add_column :users, :weight, :string
  end
end
