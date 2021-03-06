# frozen_string_literal: true

FactoryBot.define do
  factory :contribution do
    sequence(:uid, &:to_s)
    account_id { create(:account).id }
    ammount 1.0

    trait :invalid do
      uid nil
      account nil
      ammount nil
    end
  end
end
