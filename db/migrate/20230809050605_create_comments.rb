class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :commnts do |t|
      t.text :body

      t.timestamps
    end
  end
end
