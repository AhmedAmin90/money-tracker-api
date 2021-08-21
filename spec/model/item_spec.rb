require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'Relations' do
    it { should belong_to(:user) }
    it { should have_many(:expenses) }
  end
  describe 'name Presence' do
    it { should validate_presence_of(:name) }
  end

  describe 'User Presence' do
    it { should validate_presence_of(:user_id) }
  end

  describe 'Image Presence' do
    it { should validate_uniqueness_of(:user_id).scoped_to(:name) }
  end
end
