class Job < ApplicationRecord


  validates :name, presence: true, length: {maximum: 30, minimum: 5}
  validates :address, presence: true
  validates :email, presence: true

end
