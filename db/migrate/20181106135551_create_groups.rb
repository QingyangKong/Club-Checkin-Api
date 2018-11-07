class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :contract_addr
      t.string :admin_addr
      t.decimal :total_erc
      t.integer :group_member_id
      t.integer :group_card_id
      t.string :started_time

      t.timestamps
    end
  end
end
