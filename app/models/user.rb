class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable

  def self.rankings
    User.order(:rank)
  end

  # Public. Update ranks after save the game.
  # params -- rate integer
  # Returns. boolean
  def update_rank
    score = Game.where(user_id: id).average(:yscore)
    save!
    rank = User.all.order(:score).map(&:id).index(id)
    save!
    increment!(:played)
  end
end
