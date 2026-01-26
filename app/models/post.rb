class Post < ApplicationRecord
  has_one_attached :image

	validates :title, 
						presence: {message: "connot be blank"},
						length: {minimum: 4, maximum:150}

	validates :headline,
						presence: {message: "connot be blank"},
						length: {minimum: 4, maximum: 300}
end
