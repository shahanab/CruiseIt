class Tripadvisor 
  require 'httparty'
  @@apikey = '6928d6617f794b0894f6cea24606ce1c' 

  # response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147358/restaurants?key=#{apikey}") 
 
  def get_restaurants
   @@apikey = '6928d6617f794b0894f6cea24606ce1c'
   response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147358/restaurants?key=#{@@apikey}") 
    restaurants = JSON.parse(response.body)["data"]

    restaurants.each do |restaurant|
      Poi.find_or_create_by(description: restaurant["name"])
    end
  end
    def get_activities
      @@apikey = '6928d6617f794b0894f6cea24606ce1c'
      response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147358/attractions?key=#{@@apikey}")
      activities = JSON.parse(response.body)["data"]

      activities.each do |activities|
      Poi.find_or_create_by(description: activities["name"])
    end
  end
    
  def get_restaurants_tortola
      @@apikey = '6928d6617f794b0894f6cea24606ce1c'
      response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147354/restaurants?key=#{@@apikey}") 
      restaurants = JSON.parse(response.body)["data"]

    restaurants.each do |restaurant|
      Poi.find_or_create_by(description: restaurant["name"])
    end
  end

  def get_activities_tortola
      @@apikey = '6928d6617f794b0894f6cea24606ce1c'
      response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147354/attractions?key=#{@@apikey}")
      activities = JSON.parse(response.body)["data"]

      activities.each do |activities|
      Poi.find_or_create_by(description: activities["name"])
    end
  end
end

