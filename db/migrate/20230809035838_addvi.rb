class Addvi < ActiveRecord::Migration[7.0]
  def change
    remove_column :blog_posts , :view, :integer
  end
end
