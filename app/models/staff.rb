class Staff < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :working_status

  validates :name, presence: true
  validates :working_status_id, numericality: {other_than: 1, message: "cant't be blank" }
end
