class ChangeDependentIdAllowNil < ActiveRecord::Migration[6.0]
  def change
    change_column :medical_histories,:dependent_id,:integer,:null => true
  end
end
