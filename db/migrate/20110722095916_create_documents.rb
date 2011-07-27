class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :file_type
      t.integer :file_size
      t.string :caption
      t.string :description
      t.datetime :created_at
      t.integer :user_id
      t.string :file_name
      t.string :file_path
      t.integer :lecturer_id
      t.integer :course_id
      t.integer :semester_id
      t.timestamps
    end
  end
end
