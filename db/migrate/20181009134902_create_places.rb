class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.datetime :date_of_visit
      t.string :location
      t.string :point_of_interest

      t.timestamps
    end
  end
end
