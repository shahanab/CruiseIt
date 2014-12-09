class AddDestinationToPoi < ActiveRecord::Migration
  def change
    add_reference :pois, :destination, index: true
  end
end
