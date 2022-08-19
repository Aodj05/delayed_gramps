class DefaultFalseForLikedFlag < ActiveRecord::Migration[7.0]
  def change
    change_column :user_posts, :liked, :boolean, default: false, null: false
  end
end
