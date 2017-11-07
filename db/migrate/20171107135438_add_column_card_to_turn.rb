class AddColumnCardToTurn < ActiveRecord::Migration[5.1]
  def change
    add_column :turns, :card, :integer
  end
end
