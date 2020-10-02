class AddUserToDependents < ActiveRecord::Migration[6.0]
  def change
    add_reference :dependents, :user, null: false, foreign_key: true
  end
end
