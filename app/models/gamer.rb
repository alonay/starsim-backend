class Gamer < ApplicationRecord
  has_secure_password
  has_many :hot_keys
  has_one :profile
end
