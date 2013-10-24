class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.text :text
      t.datetime :date
      t.integer :likes
      t.boolean :hidden
      t.references :question, index: true

      t.timestamps
    end
  end
end
