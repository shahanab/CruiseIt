class Poi < ActiveRecord::Base
	belongs_to :destination

	has_many :category_poi
	has_many :categories, through: :category_poi
	has_many :category_pois
	has_many :categories, through: :category_pois
  has_many :itinerary_items
  has_many :itineraries, through: :itinerary_items

  scope :in_destination, ->(destination) { where(destination_id: destination.id) }

end
