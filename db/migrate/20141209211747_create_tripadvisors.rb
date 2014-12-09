class CreateTripadvisors < ActiveRecord::Migration
  def change
    create_table :tripadvisors do |t|

      t.timestamps
    end
  end
end
