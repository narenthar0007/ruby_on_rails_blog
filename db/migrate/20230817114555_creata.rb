class Creata < ActiveRecord::Migration[7.0]
  def change
    create_table :as do |t|
      t.references :user, null: false, foreign_key: true
      t.references :blog_post, null: false, foreign_key: true

      t.timestamps

    end
  end
end
