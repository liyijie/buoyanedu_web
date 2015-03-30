class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :desc
      t.string :teacher
      t.references :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :videos, :courses
  end
end
