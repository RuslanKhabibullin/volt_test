class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable

  mount_uploader :avatar, AvatarUploader

  has_many :posts, foreign_key: :author_id, dependent: :destroy
  has_many :comments, foreign_key: :author_id, dependent: :destroy

  validates :nickname, presence: true
end
