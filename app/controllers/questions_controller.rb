class QuestionsController < ApplicationController
  def index
    @question = Question.all
  end
  def show
    @question = Question.find(params[:id])

  #  some other code
  end
  def new

  end

  def create
    @question = Question.new(params.require(:question).permit(:ques, :qid))

    @question.save
    redirect_to @question
  end


end
