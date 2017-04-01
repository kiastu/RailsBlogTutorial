class Article < ApplicationRecord

	has_many :comments, dependent: :destroy

	# We can add validation for the model!
	validates :title, presence: true, length: {minimum: 5}
end
