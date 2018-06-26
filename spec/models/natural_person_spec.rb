# frozen_string_literal: true

require 'rails_helper'

RSpec.describe NaturalPerson, type: :model do
  subject(:natural_person) { build(:natural_person) }

  describe '#factory' do
    it { is_expected.to be_valid }
    it { expect(build(:natural_person, :invalid)).not_to be_valid }
  end

  describe '#associations' do
    it { is_expected.to have_many(:accounts) }
  end

  describe '#validations' do
    it { is_expected.to validate_presence_of :cpf }
  end
end