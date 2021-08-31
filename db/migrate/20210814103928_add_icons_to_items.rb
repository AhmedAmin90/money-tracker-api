class AddIconsToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :icon, :string
  end
end
