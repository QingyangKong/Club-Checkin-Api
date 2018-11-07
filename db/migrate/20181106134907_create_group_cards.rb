class CreateGroupCards < ActiveRecord::Migration[5.2]
  def change
    create_table :group_cards do |t|
      t.string :user_pk
      t.string :url
      t.string :message
      t.integer :group_card_id
      t.string :check_in_time
      t.integer :report_group_id
      t.integer :support_group_id

      t.timestamps
    end
  end
end
