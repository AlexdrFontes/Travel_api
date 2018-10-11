class Trip < ApplicationRecord
  has_and_belongs_to_many :places
  validates_presence_of :name, :description
  validates_uniqueness_of :name
  validate :arrival_before_departure

  def arrival_before_departure
    if date_of_arrival > date_of_departure
      errors.add( message: "arrival must be before departure")
      return false
    else
      return true
    end
  end
end
