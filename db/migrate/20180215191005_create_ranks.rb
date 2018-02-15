class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.integer :rank
      t.references :user, index: true, foreign_key: true
      t.integer :score
      t.integer :played

      t.timestamps null: false
    end
  end
end
