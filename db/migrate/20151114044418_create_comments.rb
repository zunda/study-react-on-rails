class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :text

      t.timestamps null: false
    end
  end
end
