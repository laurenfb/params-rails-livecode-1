class PostsController < ApplicationController
  def index
    @welcome_msg = "Hola Amiga"
    @posts = PostsController.all_posts
  end

  def show
    @posts = PostsController.all_posts
    @my_post = nil

    @posts.each do |post|
      number = params[:id].to_i
      if post[:id] == number
        @mypost = post
      end
    end

    if @mypost == nil
      render :file => 'public/404.html', :status => :not_found, :layout => false
      # @mypost = {id: params[:id].to_i, title: "That post was not found", body: ""}
    end
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
    @params = params
    @title = params["title"]
    @author = params["author"]
    @body = params["body"]
  end


  def self.all_posts
    [
      { id: 1, title: "this is the title", author: "Dave Matthews", body: "all the little ants are marching" },

      { id: 2, title: "blergh", author: "Liz Lemon", body: "that's a dealbreaker ladies" },

      { id: 3, title: "i don't think youre ready for this jelly", author: "Beyoncé", body: "my body so bootylicious for ya babe" }
    ]
  end

  private
  def post_params
    params.require(:post).permit(:title, :author, :body)
  end

end
