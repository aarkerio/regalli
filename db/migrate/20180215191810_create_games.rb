class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :played
      t.references :user, index: true, foreign_key: true
      t.integer :yscore
      t.integer :tscore
      t.integer :yrate
      t.integer :trate
      t.timestamps null: false
    end
  end
end
