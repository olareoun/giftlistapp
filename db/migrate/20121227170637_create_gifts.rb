class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.text :description
      t.references :gift_list

      t.timestamps
    end
    add_index :gifts, :gift_list_id
  end
end
