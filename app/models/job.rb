class Job < ApplicationRecord
  geocoded_by :address
  after_validation :geocode 

  validates :name, presence: true, length: {maximum: 30, minimum: 5}
  validates :address, presence: true
  validates :email, presence: true

end
