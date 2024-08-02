class Shiftpattern < ApplicationRecord
  has_many  :schedules

  validates :name,        presence: true
  validates :start_time,  presence: true
  validates :end_time,    presence: true
end
