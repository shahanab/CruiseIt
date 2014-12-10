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

    # parse[0]["name"]
    # parse[0]["address_obj"]
    # parse[0]["rating"]
  end
end

