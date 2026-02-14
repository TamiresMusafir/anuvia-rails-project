class User < ApplicationRecord
  has_secure_password
  has_one_attached :image
  has_many :posts

  enum :role, { user: 0, admin: 1 }

  VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\.com\z/i

  validates :email, presence: true,
            uniqueness: { case_sensitive: false, message: "is already taken" },
            format: { with: VALID_EMAIL_REGEX, message: "must be a valid email format" }

  validates :password, length: { minimum: 6, maximum: 20, message: "needs 6-20 characters" }, allow_nil: true
end
