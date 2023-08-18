class CreateCommets < ActiveRecord::Migration[7.0]
  def change
    create_table :commets do |t|
      t.text :body

      t.timestamps
    end
  end
end
