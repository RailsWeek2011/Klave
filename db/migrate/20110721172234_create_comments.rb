class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :authormail
      t.string :text

      t.timestamps
    end
  end
end
