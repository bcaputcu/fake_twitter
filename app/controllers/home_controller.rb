class HomeController < ApplicationController
  def index
  	@tweet = Tweet.new
  end

  def user_list
  	@users = User.all(:select => "id, email")
  end
end
