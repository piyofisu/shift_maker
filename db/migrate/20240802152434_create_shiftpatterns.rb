class CreateShiftpatterns < ActiveRecord::Migration[7.0]
  def change
    create_table :shiftpatterns do |t|
      t.string  :name,        null: false
      t.time    :start_time,  null: false
      t.time    :end_time,    null: false
      t.timestamps
    end
  end
end
