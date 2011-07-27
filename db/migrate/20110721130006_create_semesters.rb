class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :name, :unique => true

      t.timestamps
    end
  end
end
