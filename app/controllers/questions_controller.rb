class QuestionsController < ApplicationController

  def ask; end

  def answer
    # TODO: return coach answer to your_message
    your_message = params[:answer]
    if your_message.downcase == "i am going to work right now!"
      @coach_answer = "OK"
    elsif your_message.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
