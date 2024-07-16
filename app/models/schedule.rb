class Schedule < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :shiftpattern

  has_many :staffs, through: :schedule_staffs
  has_many :schedule_staffs
end
