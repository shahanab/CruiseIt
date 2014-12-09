class CategoryPoi < ActiveRecord::Base
  belongs_to :category
  belongs_to :poi


  default_scope {order('id ASC')}
end
