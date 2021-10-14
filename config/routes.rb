Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/firstgame", controller: "games", action: "firstgame"

  get "/firstletter", controller: "games", action: "firstletter"

  get "/guessanumber", controller: "games",
                       action: "guessanumber"

  get "/addtwo/:num1/:num2" => "games#addtwo"

  get "/guessanothernumber/:number" => "games#guessanothernumber"
end
