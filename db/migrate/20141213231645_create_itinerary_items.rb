class CreateItineraryItems < ActiveRecord::Migration
  def change
    create_table :itinerary_items do |t|
      t.references :itinerary, index: true
      t.references :poi, index: true

      t.timestamps
    end
  end
end
