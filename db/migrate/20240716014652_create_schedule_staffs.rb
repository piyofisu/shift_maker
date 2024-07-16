class CreateScheduleStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :schedule_staffs do |t|
      t.references  :staff,     null: false, foreign_key: true
      t.references  :schedule,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
