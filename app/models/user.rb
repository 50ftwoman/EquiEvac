class User < ApplicationRecord
  has_secure_password
  validates :email, :name, presence: true, uniqueness: true
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
