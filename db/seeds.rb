
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


d1 = Destination.find_or_create_by(name: "Virgin Gorda")
d2 = Destination.find_or_create_by(name: "Tortola")

# Moorings and Marinas:

p1 = Poi.find_or_create_by(description: "Biras Creek Resort and Marina", destination: d1)
p2 = Poi.find_or_create_by(description: "Bitter End Yacht Club", destination: d1)
p3 = Poi.find_or_create_by(description: "Brandywine Bay Moorings", destination: d2)
p4 = Poi.find_or_create_by(description: "Cane Garden Bay Mooring", destination: d2)
p5 = Poi.find_or_create_by(description: "Devils Bay/Fort Point Mooring", destination: d1)
p6 = Poi.find_or_create_by(description: "Drakes Anchorage, North Sound", destination: d1)
p7 = Poi.find_or_create_by(description: "Fort Burt Marina", destination: d2)
p8 = Poi.find_or_create_by(description: "Hodges Creek Marina", destination: d2)
p9 = Poi.find_or_create_by(description: "HR Penn Marina", destination: d2)
p10 = Poi.find_or_create_by(description: "Inner Harbour Marina", destination: d2)
p11 = Poi.find_or_create_by(description: "James Young Marina", destination: d2)
p12 = Poi.find_or_create_by(description: "Joma Marina", destination: d2)
p13 = Poi.find_or_create_by(description: "Leverick Bay Marina", destination: d1)
p14 = Poi.find_or_create_by(description: "Lighthouse Marina", destination: d2)
p15 = Poi.find_or_create_by(description: "Manuel Reef Marina", destination: d2)
p16 = Poi.find_or_create_by(description: "Mega Surface Marina", destination: d2)
p17 = Poi.find_or_create_by(description: "Nanny Cay Marina", destination: d2)
p18 = Poi.find_or_create_by(description: "Penns Landing Marina", destination: d2)
p19 = Poi.find_or_create_by(description: "Prospect Reef Resort and Marina", destination: d2)
p20 = Poi.find_or_create_by(description: "Pussers Marina Cay", destination: d2)
p21 = Poi.find_or_create_by(description: "Road Reef Marina", destination: d2)
p22 = Poi.find_or_create_by(description: "Saba Rock", destination: d1)
p23 = Poi.find_or_create_by(description: "Sopers Hole Marina", destination: d2)
p24 = Poi.find_or_create_by(description: "The Moorings Marina", destination: d2)
p25 = Poi.find_or_create_by(description: "Trellis Bay Moorings", destination: d2)
p26 = Poi.find_or_create_by(description: "Village Cay Marina", destination: d2)
p27 = Poi.find_or_create_by(description: "Virgin Gorda Yacht Harbour", destination: d1)
p28 = Poi.find_or_create_by(description: "Wheatleys Harbour View Marina", destination: d2)

# Fuel:

p29 = Poi.find_or_create_by(description: "Bitter End Yacht Club", destination: d1)
p30 = Poi.find_or_create_by(description: "Fort Burt Marina", destination: d2)
p31 = Poi.find_or_create_by(description: "Leverick Bay Marina", destination: d1)
p32 = Poi.find_or_create_by(description: "Lighthouse Marina", destination: d2)
p33 = Poi.find_or_create_by(description: "Mega Surface Marina", destination: d2)
p34 = Poi.find_or_create_by(description: "Nanny Cay Marina", destination: d2)
p35 = Poi.find_or_create_by(description: "Penns Landing Marina", destination: d2)
p36 = Poi.find_or_create_by(description: "Prospect Reef Resort and Marina", destination: d2)
p37 = Poi.find_or_create_by(description: "Pussers Marina Cay", destination: d2)
p38 = Poi.find_or_create_by(description: "Sopers Hole Marina", destination: d2)
p39 = Poi.find_or_create_by(description: "The Moorings Marina", destination: d2)
p40 = Poi.find_or_create_by(description: "Village Cay Marina", destination: d2)
p41 = Poi.find_or_create_by(description: "Virgin Gorda Yacht Harbour", destination: d1)

#Wifi

p42 = Poi.find_or_create_by(description: "Bitter End Yacht Club", destination: d1)

c1 = Category.find_or_create_by(name: "Activities")
c2 = Category.find_or_create_by(name: "Fuel")
c3 = Category.find_or_create_by(name: "Marinas/Moorings")
c4 = Category.find_or_create_by(name: "Provisions")
c5 = Category.find_or_create_by(name: "Restaurants")



CategoryPoi.find_or_create_by(category: c3, poi: p1)
CategoryPoi.find_or_create_by(category: c3, poi: p2)
CategoryPoi.find_or_create_by(category: c4, poi: p1)
CategoryPoi.find_or_create_by(category: c6, poi: p41)
