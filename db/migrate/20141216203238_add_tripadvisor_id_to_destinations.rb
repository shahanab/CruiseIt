class AddTripadvisorIdToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :tripadvisor_id, :integer
  end
end
