# frozen_string_literal: true

class Account < ApplicationRecord
  # Associations
  belongs_to :accountable, polymorphic: true
  belongs_to :account, optional: true
  has_many :accounts, dependent: :destroy

  # Enums
  enum status: { active: 0, blocked: 1, canceled: 2 }

  # Validations
  validates :name,
            :status,
            :balance,
            :accountable_type,
            :accountable_id,
            :accountable,
            presence: true
end
