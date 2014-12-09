json.array!(@poi_times) do |poi_time|
  json.extract! poi_time, :id, :start_time, :end_time, :itinerary_id, :poi_id
  json.url poi_time_url(poi_time, format: :json)
end
