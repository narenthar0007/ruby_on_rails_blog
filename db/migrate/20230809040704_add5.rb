class Add5 < ActiveRecord::Migration[7.0]
  def change
    remove_column :blog_posts, :upvote, :integer , default: 0

  end
end
