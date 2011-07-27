class CreateLecturers < ActiveRecord::Migration
  def change
    create_table :lecturers do |t|
      t.string :name, :unique => true

      t.timestamps
    end
  end
end
