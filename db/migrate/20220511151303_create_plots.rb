class CreatePlots < ActiveRecord::Migration[6.1]
  def change
    create_table :plots do |t|
      t.integer :water_level
      t.integer :following_plot
      t.integer :dehydration_rate
      t.integer :tower_id
      t.timestamps
    end
  end
end
