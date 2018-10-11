class CreatePlacesTripsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :places_trips, id: false do |t|
      t.belongs_to :place, index: true
      t.belongs_to :trip, index: true
    end
  end
end
