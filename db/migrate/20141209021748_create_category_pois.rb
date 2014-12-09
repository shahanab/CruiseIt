class CreateCategoryPois < ActiveRecord::Migration
  def change
    create_table :category_pois do |t|
      t.references :category, index: true
      t.references :poi, index: true

      t.timestamps
    end
  end
end
