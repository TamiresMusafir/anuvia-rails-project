class PagesController < ApplicationController
  def index
    @members  = Member.limit(4)
    @services = Service.limit(3)
    @posts    = Post.limit(3)
  end

  def about
  end
end
