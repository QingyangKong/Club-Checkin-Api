class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :group_member_id
      t.string :user_pk

      t.timestamps
    end
  end
end
