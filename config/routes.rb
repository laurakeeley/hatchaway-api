Rails.application.routes.draw do

  get "/ping" => "posts#ping"

  get "/posts" => "posts#index"
  get "/posts" => "posts#sort"

end
