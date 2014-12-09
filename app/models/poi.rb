class Poi < ActiveRecord::Base
	belongs_to :destination
	has_many :category_pois
	has_many :categories, through: :category_pois
end
