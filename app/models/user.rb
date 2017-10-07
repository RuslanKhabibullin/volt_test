class User < ApplicationRecord
  # some bug fixed with this line: undefined method `devise' for User
  extend Devise::Models

  devise :database_authenticatable, :registerable, :validatable

  validates :nickname, presence: true
end
