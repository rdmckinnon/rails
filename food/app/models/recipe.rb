class Recipe < ActiveRecord::Base


	validates :name, presence: true, length: { minimum: 2 }
	validates :category, presence: true, length: {minimum: 2}
	validates :ingredients, presence: true, length: {minimum: 2 }
	validates :minutes_to_cook, presence: true, numericality: true
	validates :minutes_to_prepare, presence: true, numericality: true

	def time_to_cook
		minutes_to_cook + minutes_to_prepare
	end
end
