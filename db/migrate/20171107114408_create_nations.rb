class CreateNations < ActiveRecord::Migration[5.1]
  def change
    create_table :nations do |t|
      t.string :name
      t.integer :popularity
      t.integer :coin

      t.timestamps
    end
  end
end
