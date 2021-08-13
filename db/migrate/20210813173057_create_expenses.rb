class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.integer :expense
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
