class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.integer :attendance_id
      t.integer :attendee_id
      t.timestamps
    end
  end
end
