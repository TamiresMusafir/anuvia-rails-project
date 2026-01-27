class Banner < ApplicationRecord
  has_one_attached :image
	scope :active, -> { where(active: true) }
end
