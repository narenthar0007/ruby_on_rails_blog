class Addcoluserid < ActiveRecord::Migration[7.0]
  def change
    add_column :narens, :user_id, :integer , default: 0
  end
end
