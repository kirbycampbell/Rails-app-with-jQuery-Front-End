class CreateRocketRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :rocket_relations do |t|
      t.belongs_to :engineer, index: true
      t.belongs_to :pilot, index: true
    end
  end
end
