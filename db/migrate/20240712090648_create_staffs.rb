class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string  :name               ,null: false
      t.integer :working_status_id  ,null: false
      t.integer :incharge_id        ,null: false
      t.timestamps
    end
  end
end
