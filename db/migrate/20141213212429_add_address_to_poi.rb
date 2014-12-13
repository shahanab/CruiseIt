class AddAddressToPoi < ActiveRecord::Migration
  def change
    add_column :pois, :address, :text
  end
end
