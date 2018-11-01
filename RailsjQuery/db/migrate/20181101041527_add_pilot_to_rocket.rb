class AddPilotToRocket < ActiveRecord::Migration[5.2]
  def change
    add_reference :rockets, :pilot, foreign_key: true
  end
end
