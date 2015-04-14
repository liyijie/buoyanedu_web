class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.text :title
      t.text :A
      t.text :B
      t.text :C
      t.text :D
      t.string :answer
      t.references :video, index: true

      t.timestamps null: false
    end
    add_foreign_key :tests, :videos
  end
end
