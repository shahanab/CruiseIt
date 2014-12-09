class ItineraryDestination < ActiveRecord::Base
  belongs_to :itinerary
  belongs_to :destination
end
