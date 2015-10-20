class GameController < ApplicationController

  def playRPS(user_move)
    @computer_move = ["rock", "paper", "scissors"].sample
    @user_move = user_move
    if user_move == @computer_move
      return "tie"
    elsif user_move == "paper" && @computer_move == "rock"
      return "win"
    elsif user_move == "paper" && @computer_move == "scissors"
      return "lose"
    elsif user_move == "scissors" && @computer_move == "rock"
      return "lose"
    elsif user_move == "scissors" && @computer_move == "paper"
      return "win"
    elsif user_move == "rock" && @computer_move == "paper"
      return "lose"
    elsif user_move == "rock" && @computer_move == "scissors"
      return "win"
    end

  end

  def rock
    @result = playRPS("rock")
    render('rock.html.erb')
  end

  def paper
    @result = playRPS("paper")
    render('paper.html.erb')
  end

  def scissors
   @result = playRPS("scissors")
   render('scissors.html.erb')
 end

end

