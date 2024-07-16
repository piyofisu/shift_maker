class Staff < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :working_status

  has_many :schedules, through: :schedule_staffs
  has_many :schedule_staffs

  validates :name, presence: true
  validates :working_status_id, numericality: {other_than: 1, message: "cant't be blank" }
end
