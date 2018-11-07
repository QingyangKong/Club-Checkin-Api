class CreateCardSupporters < ActiveRecord::Migration[5.2]
  def change
    create_table :card_supporters do |t|
      t.integer :supporter_group_id
      t.string :supporter_pk

      t.timestamps
    end
  end
end
