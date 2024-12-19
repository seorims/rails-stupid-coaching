class PagesController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @question = params[:question]

    case
    when @question.downcase == "Hello".downcase
      @answer = "Hey there."
    when @question.downcase == "What time is it?".downcase
      @answer = "It is #{Time.now.strftime("%I:%M %p")} now."
    else
      @answer = "Sorry, I did not get that. Please ask another question!"
    end
  end
end
