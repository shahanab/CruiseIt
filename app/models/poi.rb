class Poi < ActiveRecord::Base
	belongs_to :destination
	has_many :category_poi
	has_many :categories, through: :category_poi

	scope :in ->(category) { joins(:category_poi).
	 }




	 def in_category(cat)
	 	
	 end
end
