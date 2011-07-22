class AddContentFilenameToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :content_filename, :string
  end
end
