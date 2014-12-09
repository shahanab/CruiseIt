class Poi < ActiveRecord::Base
	belongs_to :destination
	has_many :category_poi
	has_many :categories, through: :category_poi

end
