class FixCommentsPostReference < ActiveRecord::Migration[8.1]
  def change
    remove_foreign_key :comments, column: :posts_id
    rename_column :comments, :posts_id, :post_id
    rename_index :comments, "index_comments_on_posts_id", "index_comments_on_post_id"
    add_foreign_key :comments, :posts
  end
end
