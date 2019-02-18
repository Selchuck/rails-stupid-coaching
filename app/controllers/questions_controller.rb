class QuestionsController < ApplicationController
  def ask
    @ask = params[:question]
  end

  def answer
    @reply = params[:question]
    if @reply == 'I am going to work'
      @answer = 'Great!'
    elsif @reply.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
