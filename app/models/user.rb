class User < ApplicationRecord
  def email_required?
    false
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items
  validates_uniqueness_of :username

  def total
    @total = 0
    items.each do |item|
      @total += item.expenses.sum(:expense)
    end

    @total
  end
end
