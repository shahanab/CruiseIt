class CategoryPoi < ActiveRecord::Base
  belongs_to :category
  belongs_to :poi
end
