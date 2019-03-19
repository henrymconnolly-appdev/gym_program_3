class Feed < ApplicationRecord
  # Direct associations

  has_many   :subscriptions,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
