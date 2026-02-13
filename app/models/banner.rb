class Banner < ApplicationRecord
  has_one_attached :image
	scope :active, -> { where(active: true) }

	validates :title, presence: {message: "connot be blank"},
						length: {minimum: 4, maximum: 50}
	validates :subtitle, length: {maximum: 200}
	validates :button_text, length: {maximum: 50}
end
