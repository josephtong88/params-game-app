class GamesController < ApplicationController
  def firstgame
    name = params["name"]
    render json: { message: name.upcase }
  end

  def firstletter
    name = params["name"]
    if name[0].downcase == "a"
      name = "Hey, your name starts with the first letter of the alphabet!"
    else
      name = "Hey, your name doesn't start with the first name of the alphabet!"
    end
    render json: { message: name }
  end

  def guessanumber
    number = params["number"].to_i
    if number == rand(0..100)
      number = "you guessed correctly"
    else
      number = "try again"
    end
    render json: { message: number }
  end

  def addtwo
    number1 = params["num1"].to_i
    number2 = params["num2"].to_i
    sum = number1 + number2
    render json: { message: sum }
  end

  def guessanothernumber
    number = params["number"].to_i
    if number == 36
      number = "you guessed correctly"
    else
      number = "try again"
    end
    render json: { message: number }
  end
end
