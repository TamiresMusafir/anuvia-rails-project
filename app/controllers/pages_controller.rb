class PagesController < ApplicationController
  def index
    @banners  = Banner.active.limit(3)
    @members  = Member.order(created_at: :desc).limit(4)
    @services = Service.order(created_at: :desc).limit(3)
    @posts    = Post.order(created_at: :desc).limit(3)
  end

  def about
  end

  def contact
  end
end
