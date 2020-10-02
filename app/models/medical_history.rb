class MedicalHistory < ApplicationRecord
  belongs_to :user

  belongs_to :dependent
end
