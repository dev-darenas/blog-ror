class BlogsController < ApplicationController
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

  def edit
    @blog = Blog.find(params[:id])
  end

  def show
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)

    redirect_to edit_blog_path(@blog)
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    redirect_to blogs_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :subtitle, :descrip)
  end
end
