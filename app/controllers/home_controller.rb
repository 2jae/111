class HomeController < ApplicationController
    def index
         @posts = Post.all
    end
    
    def write
    post = Post.new
       post.title = params[:title]
       post.content = params[:content]
       post.save
   end
   
   def show
       @post = Post.find(params[:post_id])
  end
  
  def new
  end
  
  def update
      
      post=Post.find(params[:post_id])
      post.title = params[:title]
      post.content = params[:content]
      post.save
      redirect_to "/home/main"
  end
  
  def delete
      post = Post.find(params[:post_id])
      post.delivery
      redirect_to "/home/main"
  end
 
end
