class PostsController < ApplicationController


  def ping
    ping = HTTP.get("https://api.hatchways.io/")
  
    render json: {"success": "true"}
  end

  def index
    posts = HTTP.get("https://api.hatchways.io/assessment/blog/posts?tag=tech")

    render json: posts
  end
  

end
