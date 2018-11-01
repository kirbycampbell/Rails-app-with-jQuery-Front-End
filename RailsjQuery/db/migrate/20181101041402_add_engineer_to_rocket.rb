class AddEngineerToRocket < ActiveRecord::Migration[5.2]
  def change
    add_reference :rockets, :engineer, foreign_key: true
  end
end
