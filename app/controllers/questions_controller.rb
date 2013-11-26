class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
  
  def show
    @question = Question.find(params[:id])
  end
  
  def search
    @questions = Question.where("title LIKE ?", "%#{params[:question].permit(:title)[:title]}%")
    
    render 'index'
  end
  
  def new
  end
  
  def create
    logged_user = logged_user()
    logged_user.add_question_points

    redirect_to Question.create(params[:question].permit(:title, :text).merge(:user => logged_user, :hidden => false))
  end

  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    
    if @question.update(params[:question].permit(:title, :text))
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    Question.find(params[:id]).destroy
    
    redirect_to questions_path
  end
end
