class Employee < ApplicationRecord
  validates :name, presence: true
  validates :mobile_number, presence: true, length: { maximum: 10 }, numericality: { only_integer: true }
  validates :years_of_experience, presence: true
end
