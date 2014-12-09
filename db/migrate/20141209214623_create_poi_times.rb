class CreatePoiTimes < ActiveRecord::Migration
  def change
    create_table :poi_times do |t|
      t.time :start_time
      t.time :end_time
      t.references :itinerary, index: true
      t.references :poi, index: true

      t.timestamps
    end
  end
end
