class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.integer :shiftpattern_id  ,null: false
      t.date    :making_date      ,null: false
      t.timestamps
    end
  end
end
