class BlogsController < ApplicationController
  before_action :load_blog, only: [:edit, :show, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def create
    @blog = Blog.new(blog_params)
    
    if @blog.save
      redirect_to edit_blog_path(@blog)
    else
      render :new
    end
  end

  def new
    @blog = Blog.new
  end

  def update
    @blog.update(blog_params)
    redirect_to edit_blog_path(@blog)
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :subtitle, :descrip)
  end

  def load_blog
    @blog = Blog.find(params[:id])
  end
end
