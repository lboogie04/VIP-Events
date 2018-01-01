class ChangeUserIdColumn < ActiveRecord::Migration[5.1]
  def change
    change_table :events do |t|
      t.rename :user_id, :creator_id
     end
  end
end
