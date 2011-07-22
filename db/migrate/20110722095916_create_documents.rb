class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :content_type
      t.integer :content_file_size
      t.string :caption
      t.string :description
      t.datetime :created_at
      t.integer :user_id

      t.timestamps
    end
  end
end
