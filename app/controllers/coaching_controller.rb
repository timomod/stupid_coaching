class CoachingController < ApplicationController

def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)

end



  def coach_answer(your_message)
    # Return coach answer to your_message
  if your_message.upcase == "I am going to work right now!".upcase
    return "Huh?"
  elsif your_message.end_with?("?") == true
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"

  end
end



def coach_answer_enhanced(your_message)

  result = coach_answer(your_message)

  if result == ""
    return ""
  end

  motivation = "I can feel your motivation!"

  if your_message == your_message.upcase
    return motivation + " " + result
  else
    return result
  end

end
end



