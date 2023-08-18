class Add3 < ActiveRecord::Migration[7.0]
  def change
    remove_column :blog_posts, :upvote, :integer
  end
end
