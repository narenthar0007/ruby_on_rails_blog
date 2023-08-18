class CreateNarens < ActiveRecord::Migration[7.0]
  def change
    create_table :narens do |t|
      t.text :body
      t.references :blog_post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
