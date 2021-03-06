class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :content, null: false
      t.integer :author_id, null: false
      t.integer :best_answer_id

      t.timestamps
    end
  end
end
