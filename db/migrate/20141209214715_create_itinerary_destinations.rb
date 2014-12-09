class CreateItineraryDestinations < ActiveRecord::Migration
  def change
    create_table :itinerary_destinations do |t|
      t.references :itinerary, index: true
      t.references :destination, index: true

      t.timestamps
    end
  end
end
