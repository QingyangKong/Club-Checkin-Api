class CreateCardReporters < ActiveRecord::Migration[5.2]
  def change
    create_table :card_reporters do |t|
      t.integer :reporter_group_id
      t.string :reporter_pk

      t.timestamps
    end
  end
end
