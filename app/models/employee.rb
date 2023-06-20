class Employee < ApplicationRecord
  validates :name, presence: true
  validates :mobile_number, presence: true, length: { maximum: 10 }
end
