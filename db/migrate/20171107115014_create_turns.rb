class CreateTurns < ActiveRecord::Migration[5.1]
  def change
    create_table :turns do |t|
      t.integer :metal
      t.integer :oil
      t.integer :wood
      t.integer :food
      t.integer :worker
      t.integer :mech
      t.integer :power
      t.integer :popularity
      t.integer :coin
      t.integer :upgrade
      t.integer :enlist
      t.integer :structure

      t.timestamps
    end
  end
end
