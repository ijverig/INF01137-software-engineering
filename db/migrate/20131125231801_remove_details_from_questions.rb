class RemoveDetailsToQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :likes, :integer
    remove_column :questions, :date, :date
    change_column :questions, :text, :text
  end
end
