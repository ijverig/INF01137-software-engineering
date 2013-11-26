class AnswersController < ApplicationController
  def create
    logged_user = logged_user()
    logged_user.add_answer_points

    Answer.create(params[:answer].permit(:text).merge(:user => logged_user, :likes => 0, :hidden => false, :question_id => params[:question_id]))
    
    redirect_to question_path(params[:question_id])
  end
end
