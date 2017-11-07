class CreatePlays < ActiveRecord::Migration[5.1]
  def change
    create_table :plays do |t|
      t.references :faction, foreign_key: true
      t.references :nation, foreign_key: true

      t.timestamps
    end
  end
end
