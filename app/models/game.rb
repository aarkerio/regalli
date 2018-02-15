class Game < ActiveRecord::Base
  belongs_to :user

  belongs_to :oponent, class_name: "User"

  validates :yscore, presence: true
  validates :tscore, presence: true
  validate :two_points_distance

  after_create :update_rankings

  # validations
  def two_points_distance
    distance = (yscore - tscore).abs
    if distance == 0
      errors.add(:tscore, "Sorry pal, ties are not allowed")
    end
    if distance < 2
      errors.add(:tscore, "Nope: should have two points at least")
    end
  end

  private

  # Private. Process and update ratings.
  def update_rankings
    winner = yscore > tscore ? [true, false] : [false, true]

    elo_rating = EloRating::Match.new.add_player(rating: user.rank, winner: winner.first).add_player(rating: oponent.rank, winner: winner.second).updated_ratings

    yrate = elo_rating.first
    trate = elo_rating.second
    save
    user.update_rank
  end
end
