class Expense < ApplicationRecord
  belongs_to :item , touch: true

  def self.cache_key(expenses)
    {
      serializer: 'expenses',
      stat_record: expenses.maximum(:updated_at)
    }
  end
end
