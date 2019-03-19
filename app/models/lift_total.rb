class LiftTotal < ApplicationRecord
  # Direct associations

  belongs_to :profile,
             :counter_cache => true

  # Indirect associations

  # Validations

end
