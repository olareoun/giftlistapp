class AddCreatorToGiftLists < ActiveRecord::Migration
  def change
    add_column :gift_lists, :creator_id, :integer
  end
end
