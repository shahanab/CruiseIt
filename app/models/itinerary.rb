class Itinerary < ActiveRecord::Base
  belongs_to :user
  has_many :itinerary_destinations
  has_many :destinations, through: :itinerary_destinations
  has_many :itinerary_items
  has_many :pois, through: :itinerary_items
end
