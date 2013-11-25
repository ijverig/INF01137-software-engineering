class RemoveDetailsFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :title, :string
    remove_column :answers, :date, :datetime
  end
end
