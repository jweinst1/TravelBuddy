class AddEndToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :end, :string
  end
end
