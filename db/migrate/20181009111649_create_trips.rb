class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :name
      t.text :description
      t.date :date_of_arrival
      t.date :date_of_departure

      t.timestamps
    end
  end
end
