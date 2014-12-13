class Tripadvisor 
  require 'httparty'
  @@apikey = '6928d6617f794b0894f6cea24606ce1c' 

  # response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147358/restaurants?key=#{apikey}") 
 
  def self.get_restaurants
   @@apikey = '6928d6617f794b0894f6cea24606ce1c'
   response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147358/restaurants?key=#{@@apikey}") 
    restaurants = JSON.parse(response.body)["data"]

    restaurants.each do |restaurant|
      p = Poi.find_or_create_by(description: restaurant["name"])
      p.rating = restaurant["rating"] 
      p.address = "#{restaurant['address_obj']['street1']} #{restaurant['address_obj']['street2']}
#{restaurant["address_obj"]["city"]}, #{restaurant["address_obj"]["state"]}
#{restaurant["address_obj"]["country"]} #{restaurant["address_obj"]["postalcode"]}"
      p.save
    end
  end
    def self.get_activities
      @@apikey = '6928d6617f794b0894f6cea24606ce1c'
      response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147358/attractions?key=#{@@apikey}")
      activities = JSON.parse(response.body)["data"]

      activities.each do |activity|
      p = Poi.find_or_create_by(description: activity["name"])
      p.rating = activity["rating"] 
      p.address = "#{activity['address_obj']['street1']} #{activity['address_obj']['street2']}
#{activity["address_obj"]["city"]}, #{activity["address_obj"]["state"]}
#{activity["address_obj"]["country"]} #{activity["address_obj"]["postalcode"]}"
      p.save


    end
  end
  def self.get_restaurants_tortola
      @@apikey = '6928d6617f794b0894f6cea24606ce1c'
      response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147354/restaurants?key=#{@@apikey}") 
      restaurants = JSON.parse(response.body)["data"]

    restaurants.each do |restaurant|
      p = Poi.find_or_create_by(description: restaurant["name"])
      p.rating = restaurant["rating"] 
      p.address = "#{restaurant['address_obj']['street1']} #{restaurant['address_obj']['street2']}
#{restaurant["address_obj"]["city"]}, #{restaurant["address_obj"]["state"]}
#{restaurant["address_obj"]["country"]} #{restaurant["address_obj"]["postalcode"]}"
      p.save
    end
  end
  def self.get_activities_tortola
      @@apikey = '6928d6617f794b0894f6cea24606ce1c'
      response = HTTParty.get("http://api.tripadvisor.com/api/partner/2.0/location/147354/attractions?key=#{@@apikey}")
      activities = JSON.parse(response.body)["data"]

       activities.each do |activity|
      p = Poi.find_or_create_by(description: activity["name"])
      p.rating = activity["rating"] 
      p.address = "#{activity['address_obj']['street1']} #{activity['address_obj']['street2']}
#{activity["address_obj"]["city"]}, #{activity["address_obj"]["state"]}
#{activity["address_obj"]["country"]} #{activity["address_obj"]["postalcode"]}"
      p.save


    end
  end
  def self.populate
    get_restaurants
    get_activities
    get_restaurants_tortola
    get_activities_tortola
  end
end

