class MainController < ApplicationController
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @posts }
    end
  end

  def list
    @posts = Post.find(:all,
        :conditions => "status = 'published'",
        :order => 'created_at DESC')

    
  end

  def category
  end

  def archive
  end

  def view_post
    @post = Post.find(params[:id])
  end
end
