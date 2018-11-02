class CreateRocketEngineerRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :rocket_engineer_relations do |t|
      t.belongs_to :rocket, index: true
      t.belongs_to :engineer, index: true
      t.timestamps
    end
  end
end
