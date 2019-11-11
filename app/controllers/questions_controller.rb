class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    # si le message est egale a "I am going to work"
    if @question == 'I am going to work'
      # alors answer est egale a "Great!"
      @answer = 'Great!'
      # si le message contient un point d'interrogation
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
