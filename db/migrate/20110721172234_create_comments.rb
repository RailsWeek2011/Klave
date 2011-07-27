class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :text
      t.integer :document_id
      t.timestamps
    end
  end
end
