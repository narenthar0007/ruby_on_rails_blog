class AddColCategoryToBlogPost < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_posts, :category, :string , default: "General"
  end
end
