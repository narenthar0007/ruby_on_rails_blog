class Add1 < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :view, :integer
  end
end
