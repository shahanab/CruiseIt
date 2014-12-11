class Itinerary < ActiveRecord::Base
  belongs_to :user
  has_many :itinerary_destinations
  has_many :destinations, through: :itinerary_destinations
end
