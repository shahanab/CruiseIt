class Category < ActiveRecord::Base
	has_many :categories_pois
	has_many :pois, through: :category_pois

	def of_this(poi)
		CategoryPoi.where(category_id: self.id, poi_id: poi.id).take
	end
end
