class User < ApplicationRecord
  # some bug fixed with this line: undefined method `devise' for User
  extend Devise::Models

  devise :database_authenticatable, :registerable, :validatable

  has_many :posts, foreign_key: :author_id, dependent: :destroy
  has_many :comments, foreign_key: :author_id, dependent: :destroy

  validates :nickname, presence: true
end
