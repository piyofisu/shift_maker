class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.date        :request_date,  null: false
      t.references  :staff,         null: false, foreign_key: true
      t.references  :shiftpattern,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
