class Auction < ActiveRecord::Base

      has_many :items
      has_many :rounds
      belongs_to :game
      has_many :pledges, through: :rounds
      has_many :characters, through: :games

      validates :type, presence: :true, numericality: {less_than_or_equal_to: 1}, numericality: {greater_than_or_equal_to: 1}

end
