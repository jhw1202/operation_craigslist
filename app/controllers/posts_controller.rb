class PostsController < ApplicationController

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @categories = Category.all
    @post = Post.new(params[:post])
    respond_to do |format|
      if @post.save
        # redirect_to post_path(@post)
        print "\n" * 3
        print "foo"
        format.js
      else
        render :action => 'new'
      end
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def delete
    Post.find(params[:id]).destroy
    redirect_to :action => 'index'
  end 

end



# :new, :create, :show, :index]
