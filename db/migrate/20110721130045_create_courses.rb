class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, :unique => true

      t.timestamps
    end
  end
end
