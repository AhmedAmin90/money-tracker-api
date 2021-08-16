class Item < ApplicationRecord
  belongs_to :user
  has_many :expenses
  validates :name , presence :true
  validates :user_id, presence: true, uniqueness: { scope: :name }

end
