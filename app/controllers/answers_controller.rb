class AnswersController < ApplicationController
  def create
    Answer.create(params[:answer].permit(:text).merge(:date => Time.now, :likes => 0, :hidden => false, :question_id => params[:question_id]))
    
    redirect_to question_path(params[:question_id])
  end
end
