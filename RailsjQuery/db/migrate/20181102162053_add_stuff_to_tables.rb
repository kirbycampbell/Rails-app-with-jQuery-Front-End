class AddStuffToTables < ActiveRecord::Migration[5.2]
  def change
    add_reference :engineers, :rocket, foreign_key: true
    add_reference :pilots, :rocket, foreign_key: true
  end
end
