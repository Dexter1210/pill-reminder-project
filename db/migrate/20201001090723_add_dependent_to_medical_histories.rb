class AddDependentToMedicalHistories < ActiveRecord::Migration[6.0]
  def change
    add_reference :medical_histories, :dependent, null: false, foreign_key: true
  end
end
