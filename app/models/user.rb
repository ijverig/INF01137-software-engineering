class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  
  def add_question_points
    increment! :xp, 5
  end

  def add_answer_points
    increment! :xp, 5
  end
end
