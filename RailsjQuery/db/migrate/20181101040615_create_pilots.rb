class CreatePilots < ActiveRecord::Migration[5.2]
  def change
    create_table :pilots do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :slogan
      t.timestamps
    end
  end
end
