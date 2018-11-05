class AddRocketIdtoEngineers < ActiveRecord::Migration[5.2]
  def change
    add_column :engineers, :rocket_id, :integer
  end
end
