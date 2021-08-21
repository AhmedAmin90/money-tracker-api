require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Relations' do
    it { should have_many(:items) }
  end
  describe 'name Presence' do
    it { should validate_uniqueness_of(:username) }
  end

  describe 'name Presence' do
    it { should validate_presence_of(:password) }
  end
end
