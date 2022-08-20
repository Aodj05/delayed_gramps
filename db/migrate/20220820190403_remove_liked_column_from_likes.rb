class RemoveLikedColumnFromLikes < ActiveRecord::Migration[7.0]
  def change
    remove_column :likes, :liked
  end
end
