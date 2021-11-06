Rails.application.routes.draw do

  get "/ping" => "posts#ping"

  get "/tech" => "posts#index"

end
