class StaticPagesController < ApplicationController
 
  def home
  	@project = current_user.projects.build if signed_in?
  	@feed_items = Project.text_search(params[:query]).paginate(page: params[:page]) if signed_in?
  	@subscriber = Subscriber.new
  end

  def about
  end

  def contact
  end
end
