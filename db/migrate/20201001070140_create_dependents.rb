class CreateDependents < ActiveRecord::Migration[6.0]
  def change
    create_table :dependents do |t|
      t.string :relationship
      t.string :name
      t.string :email
      t.string :phone
      t.string :blood_group
      t.date :date_of_birth
      t.string :weight
      t.string :height

      t.timestamps
    end
    add_index :dependents, :email, unique: true
  end
end
