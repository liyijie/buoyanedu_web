class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :desc

      t.timestamps null: false
    end
  end
end
