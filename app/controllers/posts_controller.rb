class PostsController < ApplicationController
  caches_page :index
   def index
    @posts = Post.all
   end

   def show
     @post = Post.find params[:id]
   end

   def delete
      @post = Post.find params[:id]
      @post.delete
   end

   def new
     @post = Post.new
   end

   def create
    @post = Post.create(post_params)
    redirect_to root_url
  end

   def edit
   end

   def update
   end

private
  def post_params
    params.require(:post).permit(:user_id, :name, :description)
  end
end
