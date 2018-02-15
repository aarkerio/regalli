class AddRankToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rank, :integer, default: 0
    add_column :users, :score, :integer, default: 0
    add_column :users, :played, :integer, default: 0
  end
end
