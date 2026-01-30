class PagesController < ApplicationController
  def index
    @banners  = Banner.active.limit(3)
    @members  = Member.limit(4)
    @services = Service.limit(3)
    @posts    = Post.limit(3)
  end

  def about
  end

  def contact
  end
end
