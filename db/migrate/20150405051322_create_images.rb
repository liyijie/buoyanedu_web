class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :desc
      t.references :imageable, polymorphic: true, index: true

      t.timestamps null: false
    end
    add_foreign_key :images, :imageables
  end
end
