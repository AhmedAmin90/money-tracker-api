require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'Relations' do
    it { should belong_to(:item) }
  end
end
