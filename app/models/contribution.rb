# frozen_string_literal: true

class Contribution < ApplicationRecord
  # Associations
  belongs_to :account

  # Validations
  validates :uid,
            :account,
            :ammount,
            presence: true
  validates_uniqueness_of :uid, case_sensitive: false
end
