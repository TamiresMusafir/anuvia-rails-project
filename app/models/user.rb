class User < ApplicationRecord
  has_secure_password
  has_one_attached :image
  has_many :posts

  enum :role, { user: 0, admin: 1 }

  before_validation :strip_email

  validates :email, presence: true,
            uniqueness: { case_sensitive: false, message: "is already taken" },
            format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email format" }

  validates :password, length: { minimum: 6, maximum: 20, message: "needs 6-20 characters" }, allow_nil: true

  private

  def strip_email
    self.email = email.strip unless email.nil?
  end
end
