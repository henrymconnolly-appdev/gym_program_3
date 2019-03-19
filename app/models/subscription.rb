class Subscription < ApplicationRecord
  # Direct associations

  belongs_to :feed,
             :required => false,
             :counter_cache => true

  belongs_to :profile,
             :counter_cache => true

  # Indirect associations

  # Validations

end
