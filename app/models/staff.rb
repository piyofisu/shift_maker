class Staff < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sex

  has_many :schedule_staffs
  has_many :schedules, through: :schedule_staffs

  validates :name, presence: true
end
