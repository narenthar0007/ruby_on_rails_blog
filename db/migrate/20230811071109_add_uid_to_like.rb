class AddUidToLike < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :uid, :integer, unique: true
  end
end
