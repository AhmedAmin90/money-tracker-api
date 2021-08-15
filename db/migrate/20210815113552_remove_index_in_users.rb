class RemoveIndexInUsers < ActiveRecord::Migration[6.1]
  def change
    remove_index :users, column: :email, unique: true
  end
end
