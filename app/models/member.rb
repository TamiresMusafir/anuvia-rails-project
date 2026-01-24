class Member < ApplicationRecord
  has_one_attached :image
	
	validates :name, :role, 
						presence: {message: "the field connot be blank"},
						length: {minimum: 4, maximum: 50}

	validates :description, presence: {message: "the description connot be blank"}
end
