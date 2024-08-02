class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.date        :making_date,     null: false
      t.references  :shiftpattern, null: false,  foreign_key: true
      t.timestamps
    end
  end
end
