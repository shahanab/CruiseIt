class Destination < ActiveRecord::Base
	has_many :pois
	has_many :categories, through: :pois
end
