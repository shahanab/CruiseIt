class ItineraryItem < ActiveRecord::Base
  belongs_to :itinerary
  belongs_to :poi
end
