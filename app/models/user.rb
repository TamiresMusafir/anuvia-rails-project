class User < ApplicationRecord
  has_secure_password
  has_one_attached :image

  enum :role, { user: 0, admin: 1 }

  validates :email, presence: true, uniqueness: true
end
