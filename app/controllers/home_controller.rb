class HomeController < ApplicationController

  def index

  end

  def new

  end

  def service

  end

  def profile

  end

  def blog
    @blogs = Blog.all
  end
end
