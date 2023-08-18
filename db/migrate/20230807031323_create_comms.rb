class CreateComms < ActiveRecord::Migration[7.0]
  def change
    create_table :comms do |t|

      t.timestamps
    end
  end
end
