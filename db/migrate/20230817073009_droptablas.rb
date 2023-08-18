class Droptablas < ActiveRecord::Migration[7.0]
  def change
    drop_table :as
    drop_table :commnts
    drop_table :comment_tables
    drop_table :commets
    drop_table :comms
  
  end
end
