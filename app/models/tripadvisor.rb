class Tripadvisor 
  require 'httparty'
  @@apikey = '6928d6617f794b0894f6cea24606ce1c' 

  # response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147358/restaurants?key=#{apikey}") 
 
  def get_restaurants
   @@apikey = '6928d6617f794b0894f6cea24606ce1c'
   response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147358/restaurants?key=#{@@apikey}") 
 
  end
end

