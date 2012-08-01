class PostsController < ApplicationController

  http_basic_authenticate_with :name => "*********", :password => "*********", :except => [:index, :show]

  def index
    @posts = Post.order('created_at desc').page(params[:page]).per(25)
  end

  def show
    @post = Post.find(params[:id])

  end

 
  def new
    @post = Post.new
	8.times{@post.post_images.build}   

 
  end

  
  def edit
    @post = Post.find(params[:id])
	8.times{@post.post_images.build} 
  end

 
  def create
    @post = Post.new(params[:post])

    
      if @post.save
        redirect_to @post, notice: 'Post was successfully created.' 
        
      else
        render action: "new" 
        
     
    end
  end

 
  def update
    @post = Post.find(params[:id])
         if @post.update_attributes(params[:post])

        redirect_to @post, notice: 'Post was successfully updated.'
        else
       render action: "edit"
     
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

   
   redirect_to posts_url 
   
   
  end
end
