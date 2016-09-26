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
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end


  def self.all_posts
    [
      { id: 1, title: "this is the title", author: "Dave Matthews", body: "all the little ants are marching" },

      { id: 2, title: "blergh", author: "Liz Lemon", body: "that's a dealbreaker ladies" },

      { id: 3, title: "i don't think youre ready for this jelly", author: "Beyoncé", body: "my body so bootylicious for ya babe" }
    ]
  end


end
