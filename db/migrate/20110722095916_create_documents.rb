class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :filetype
      t.integer :file_size
      t.string :caption
      t.string :description
      t.datetime :created_at
      t.integer :user_id
      t.string :filename
      t.string :path

      t.timestamps
    end
  end
end
