class Item < ApplicationRecord
  belongs_to :user
  has_many :expenses 

  validates :name, presence: true
  validates :user_id, presence: true, uniqueness: { scope: :name }


  def self.cache_key(items)
    {
      serializer: 'items',
      stat_record: items.maximum(:updated_at)
    }
  end
end
