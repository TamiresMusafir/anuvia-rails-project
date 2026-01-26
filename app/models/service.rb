class Service < ApplicationRecord
  has_one_attached :image
	
	validates :title, 
						presence: {message: "connot be blank"},
						length: {minimum: 4, maximum: 50}

	validates :text_field1, :text_field2, :text_field3,
						presence: {message: "connot be blank"}
end
