
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Destinations:
d1 = Destination.find_or_create_by(name: "Virgin Gorda")
d2 = Destination.find_or_create_by(name: "Tortola")

#Points of Interest:
	#Marinas/Moorings, Wifi, Fuel:
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
	p29 = Poi.find_or_create_by(description: "Savannah Bay", destination: d1)
	p30 = Poi.find_or_create_by(description: "Yacht Club Costa Smeralda", destination: d1)
	p44 = Poi.find_or_create_by(description: "Maya's Cove", destination: d2)
	p45 = Poi.find_or_create_by(description: "Harbour View Marina", destination: d2)
	p46 = Poi.find_or_create_by(description: "Hannah Bay Marina", destination: d2)

	#Provisions:
	p31 = Poi.find_or_create_by(description: "Rosy's Enterprises", destination: d1)
	p32 = Poi.find_or_create_by(description: "RiteWay, Spanish Town", destination: d1)
	p33 = Poi.find_or_create_by(description: "RiteWay, Harbour Market", destination: d2)
	p34 = Poi.find_or_create_by(description: "RiteWay, Road Reef", destination: d2)
	p35 = Poi.find_or_create_by(description: "RiteWay, Road Town", destination: d2)
	p36 = Poi.find_or_create_by(description: "RiteWay, Pasea", destination: d2)
	p37 = Poi.find_or_create_by(description: "RiteWay, East End", destination: d2)
	p38 = Poi.find_or_create_by(description: "RiteWay, Fine Foods-East End", destination: d2)
	p39 = Poi.find_or_create_by(description: "RiteWay, Fat Hog's Bay", destination: d2)
	p40 = Poi.find_or_create_by(description: "Ample Hamper Too", destination: d2)
	p41 = Poi.find_or_create_by(description: "Sailor's Ketch Seafood Market", destination: d2)
	p42 = Poi.find_or_create_by(description: "Trellis Food Market", destination: d2)
	p43 = Poi.find_or_create_by(description: "Dock Master's Deli", destination: d2)


# Categories:
c1 = Category.find_or_create_by(name: "Activities")
c2 = Category.find_or_create_by(name: "Fuel")
c3 = Category.find_or_create_by(name: "Marinas/Moorings")
c4 = Category.find_or_create_by(name: "Provisions")
c5 = Category.find_or_create_by(name: "Restaurants")
c6 = Category.find_or_create_by(name: "Wifi")

#'Fuel':
CategoryPoi.find_or_create_by(category: c2, poi: p2)
CategoryPoi.find_or_create_by(category: c2, poi: p7)
CategoryPoi.find_or_create_by(category: c2, poi: p13)
CategoryPoi.find_or_create_by(category: c2, poi: p14)
CategoryPoi.find_or_create_by(category: c2, poi: p16)
CategoryPoi.find_or_create_by(category: c2, poi: p17)
CategoryPoi.find_or_create_by(category: c2, poi: p18)
CategoryPoi.find_or_create_by(category: c2, poi: p19)
CategoryPoi.find_or_create_by(category: c2, poi: p20)
CategoryPoi.find_or_create_by(category: c2, poi: p23)
CategoryPoi.find_or_create_by(category: c2, poi: p24)
CategoryPoi.find_or_create_by(category: c2, poi: p26)
CategoryPoi.find_or_create_by(category: c2, poi: p27)
CategoryPoi.find_or_create_by(category: c2, poi: p45)

# 'Moorings and Marinas':
CategoryPoi.find_or_create_by(category: c3, poi: p1)
CategoryPoi.find_or_create_by(category: c3, poi: p2)
CategoryPoi.find_or_create_by(category: c3, poi: p3)
CategoryPoi.find_or_create_by(category: c3, poi: p4)
CategoryPoi.find_or_create_by(category: c3, poi: p5)
CategoryPoi.find_or_create_by(category: c3, poi: p6)
CategoryPoi.find_or_create_by(category: c3, poi: p7)
CategoryPoi.find_or_create_by(category: c3, poi: p8)
CategoryPoi.find_or_create_by(category: c3, poi: p9)
CategoryPoi.find_or_create_by(category: c3, poi: p10)
CategoryPoi.find_or_create_by(category: c3, poi: p11)
CategoryPoi.find_or_create_by(category: c3, poi: p12)
CategoryPoi.find_or_create_by(category: c3, poi: p13)
CategoryPoi.find_or_create_by(category: c3, poi: p14)
CategoryPoi.find_or_create_by(category: c3, poi: p15)
CategoryPoi.find_or_create_by(category: c3, poi: p16)
CategoryPoi.find_or_create_by(category: c3, poi: p17)
CategoryPoi.find_or_create_by(category: c3, poi: p18)
CategoryPoi.find_or_create_by(category: c3, poi: p19)
CategoryPoi.find_or_create_by(category: c3, poi: p20)
CategoryPoi.find_or_create_by(category: c3, poi: p21)
CategoryPoi.find_or_create_by(category: c3, poi: p22)
CategoryPoi.find_or_create_by(category: c3, poi: p23)
CategoryPoi.find_or_create_by(category: c3, poi: p24)
CategoryPoi.find_or_create_by(category: c3, poi: p25)
CategoryPoi.find_or_create_by(category: c3, poi: p26)
CategoryPoi.find_or_create_by(category: c3, poi: p27)
CategoryPoi.find_or_create_by(category: c3, poi: p28)
CategoryPoi.find_or_create_by(category: c3, poi: p29)
CategoryPoi.find_or_create_by(category: c3, poi: p30)
CategoryPoi.find_or_create_by(category: c3, poi: p44)
CategoryPoi.find_or_create_by(category: c3, poi: p45)
CategoryPoi.find_or_create_by(category: c3, poi: p46)

# 'Provisions':
CategoryPoi.find_or_create_by(category: c4, poi: p2)
CategoryPoi.find_or_create_by(category: c4, poi: p4)
CategoryPoi.find_or_create_by(category: c4, poi: p13)
CategoryPoi.find_or_create_by(category: c4, poi: p17)
CategoryPoi.find_or_create_by(category: c4, poi: p27)
CategoryPoi.find_or_create_by(category: c4, poi: p31)
CategoryPoi.find_or_create_by(category: c4, poi: p32)
CategoryPoi.find_or_create_by(category: c4, poi: p33)
CategoryPoi.find_or_create_by(category: c4, poi: p34)
CategoryPoi.find_or_create_by(category: c4, poi: p35)
CategoryPoi.find_or_create_by(category: c4, poi: p36)
CategoryPoi.find_or_create_by(category: c4, poi: p37)
CategoryPoi.find_or_create_by(category: c4, poi: p38)
CategoryPoi.find_or_create_by(category: c4, poi: p39)
CategoryPoi.find_or_create_by(category: c4, poi: p40)
CategoryPoi.find_or_create_by(category: c4, poi: p41)
CategoryPoi.find_or_create_by(category: c4, poi: p42)
CategoryPoi.find_or_create_by(category: c4, poi: p43)

# 'Wifi':
CategoryPoi.find_or_create_by(category: c6, poi: p2)
CategoryPoi.find_or_create_by(category: c6, poi: p4)
CategoryPoi.find_or_create_by(category: c6, poi: p13)
CategoryPoi.find_or_create_by(category: c6, poi: p15)
CategoryPoi.find_or_create_by(category: c6, poi: p17)
CategoryPoi.find_or_create_by(category: c6, poi: p18)
CategoryPoi.find_or_create_by(category: c6, poi: p20)
CategoryPoi.find_or_create_by(category: c6, poi: p21)
CategoryPoi.find_or_create_by(category: c6, poi: p22)
CategoryPoi.find_or_create_by(category: c6, poi: p23)
CategoryPoi.find_or_create_by(category: c6, poi: p24)
CategoryPoi.find_or_create_by(category: c6, poi: p25)
CategoryPoi.find_or_create_by(category: c6, poi: p26)
CategoryPoi.find_or_create_by(category: c6, poi: p27)
CategoryPoi.find_or_create_by(category: c6, poi: p46)