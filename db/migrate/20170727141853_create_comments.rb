class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content, null: false
      t.integer :author_id, null: false
      # is the format? - foreign_key: true
      t.integer :commentable_id, null: false
      t.string :commentable_type, null: false

      t.timestamps
    end
  end
end
