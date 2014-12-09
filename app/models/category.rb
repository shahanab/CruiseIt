class Category < ActiveRecord::Base
	has_many :category_poi
	has_many :poi, through: :category_poi

	def of_this(poi)
		CategoryPoi.where(category_id: self.id, poi_id: poi.id).take
	end
end
