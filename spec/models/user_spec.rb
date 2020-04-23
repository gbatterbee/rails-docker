# frozen_string_literal: true

require 'rails_helper'

describe User, type: :model do
  describe 'tests' do
    it 'requires first_name_to be set' do
      expect(subject.valid?).to_not be
      expect(subject.errors[:first_name].size).to eq(1)
    end

    it 'requires last_name to be set' do
      expect(subject.valid?).to_not be
      expect(subject.errors[:last_name].size).to eq(1)
    end
  end
end
