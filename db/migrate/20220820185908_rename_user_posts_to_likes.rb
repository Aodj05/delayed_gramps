class RenameUserPostsToLikes < ActiveRecord::Migration[7.0]
  def change
    rename_table :user_posts, :likes
  end
end
