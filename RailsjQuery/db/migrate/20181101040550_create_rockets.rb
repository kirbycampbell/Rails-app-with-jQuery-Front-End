class CreateRockets < ActiveRecord::Migration[5.2]
  def change
    create_table :rockets do |t|
      t.string :name
      t.string :type
      t.integer :top_speed
      t.integer :capacity
      t.timestamps
      t.belongs_to :engineer, index: true
      t.belongs_to :pilot, index: true
    end
  end
end
