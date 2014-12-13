class AddRatingToPoi < ActiveRecord::Migration
  def change
    add_column :pois, :rating, :decimal, precision: 2, scale: 2
  end
end
