class Updateviii < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :view, :integer, default: 0
  end
end
