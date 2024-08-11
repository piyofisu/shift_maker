class Shiftpattern < ApplicationRecord
  has_many  :schedules

  validates :name,        presence: true
  validates :start_time,  presence: true
  validates :end_time,    presence: true

  def formatted_start_time
    start_time.strftime("%H:%M")
  end

  def formatted_end_time
    end_time.strftime("%H:%M")
  end

  def formatted_start_time_or_default
    start_time.present? ? formatted_start_time : "--"
  end
end