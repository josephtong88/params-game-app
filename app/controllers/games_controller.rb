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
end
