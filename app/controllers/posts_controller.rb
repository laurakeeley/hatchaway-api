class PostsController < ApplicationController


  def ping
    ping = HTTP.get("https://api.hatchways.io/assessment/blog/posts").parse(:json)
    
    render json: {"success": true}
  end

  def index
    tag = params[:tag]
    sortBy = params[:sortBy]

    if sortBy == "id" || sortBy == "reads" || sortBy == "likes" || sortBy == "popularity"
      posts = HTTP.get("https://api.hatchways.io/assessment/blog/posts?tag=#{tag}&sortBy=#{sortBy}").parse(:json)["posts"]
      posts = posts.sort_by{ |post| post["#{sortBy}"] }
      posts = posts.scoped.order("reads")
      render json: posts
    else
      render json: {"error": "sortBy parameter is invalid"}
    end
  end
  

end
