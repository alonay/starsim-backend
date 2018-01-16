class HotKey < ApplicationRecord
  belongs_to :gamer
  has_many :profiles, through: :gamers

end
