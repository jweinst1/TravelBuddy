class AddTripToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :trip, index: true
  end
end
