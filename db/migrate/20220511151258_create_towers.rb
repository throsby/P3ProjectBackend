class CreateTowers < ActiveRecord::Migration[6.1]
  def change
    create_table :towers do |t|
      t.integer :next_neighbor
      t.timestamps
    end
  end
end
