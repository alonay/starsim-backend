class Profile < ApplicationRecord
  belongs_to :gamer
  has_many :hot_keys, through: :gamer
end
