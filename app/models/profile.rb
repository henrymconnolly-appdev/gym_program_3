class Profile < ApplicationRecord
  # Direct associations

  has_many   :lift_totals,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
