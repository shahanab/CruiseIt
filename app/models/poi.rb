class Poi < ActiveRecord::Base
	belongs_to :destination
	has_and_belongs_to_many :category
end
