require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Creating and validating user' do
    let(:user) { FactoryGirl.create :user }
    it 'validating user' do
      expect(user).to be_valid
    end

    it 'checking that user has full_name' do
      expect(user.full_name).to eq('Wayne Bruce')
    end
  end
end
