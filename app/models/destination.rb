class Destination < ActiveRecord::Base
	has_many :pois
	has_many :intinerary_destinations
	has_many :categories, through: :pois
	has_many :itineraries, through: :intinerary_destinations
end
