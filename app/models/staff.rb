class Staff < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :working_status

  has_many :schedule_staffs
  has_many :schedules, through: :schedule_staffs

  validates :name, presence: true
  validates :working_status_id, numericality: {other_than: 1, message: "cant't be blank" }
end
