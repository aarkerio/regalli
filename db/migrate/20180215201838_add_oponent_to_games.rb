class AddOponentToGames < ActiveRecord::Migration
  def change
    add_column :games, :oponent, :integer
    add_foreign_key :games, :users, column: :oponent_id
  end
end
