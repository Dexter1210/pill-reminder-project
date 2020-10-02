class ChangePhoneToStringFromUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |table|
      table.change :phone, :string
    end
  end
end
