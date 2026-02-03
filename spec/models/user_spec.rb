require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#name' do
    it 'returns the users name' do
      expect(FactoryBot.build(:accountant).name).to eq('Accountant')
    end
  end
end
