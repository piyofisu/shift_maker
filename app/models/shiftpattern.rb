class Shiftpattern < ApplicationRecord
  has_many  :schedules

  validates :name,        presence: true
  validates :start_time,  presence: true
  validates :end_time,    presence: true

  def formatted_start_time
    start_time.present? ? start_time.strftime("%H:%M") : "--"
  end

  def formatted_end_time
    end_time.present? ? end_time.strftime("%H:%M") : "--"
  end

  def self.with_default
    all.to_a.prepend(new(id: nil, start_time: "--"))
  end
end