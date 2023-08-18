class Add4 < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :upvote, :integer , default: 0

  end
end
