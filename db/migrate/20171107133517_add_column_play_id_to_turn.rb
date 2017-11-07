class AddColumnPlayIdToTurn < ActiveRecord::Migration[5.1]
  def change
    add_reference :turns, :play, foreign_key: true
  end
end
