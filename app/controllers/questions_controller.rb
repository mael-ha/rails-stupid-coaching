class QuestionsController < ApplicationController
  def ask
  end

  def answer
    return coach_answer_enhanced
  end

  def coach_answer_enhanced
    @question = params[:user_question]
    if @question == "I am going to work right now!"
      return @answer = "Great!"
    elsif @question.include? "?"
      return @answer = "Silly question, get dressed and go to work!"
    else
      return @answer = "I don't care, get dressed and go to work!"
    end
  end

end
