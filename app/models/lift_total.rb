class LiftTotal < ApplicationRecord
  # Direct associations

  has_one    :lift_total_detail,
             :dependent => :destroy

  belongs_to :profile,
             :counter_cache => true

  # Indirect associations

  # Validations

end
