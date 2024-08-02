class Schedule < ApplicationRecord
  belongs_to :shiftpattern
  has_many :schedule_staffs
  has_many :staffs, through: :schedule_staffs
end
