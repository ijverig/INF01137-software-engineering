class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :text
      t.date :date
      t.integer :likes
      t.boolean :hidden

      t.timestamps
    end
  end
end
