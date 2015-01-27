class AnswersController < ApplicationController

  def new

  end
  def show

  end
  def create
    @answer = Answer.new(params.require(:answer).permit(:answer, :ansid))

    @answer.save
    redirect_to @answer

  end
end
