class HomeController < ApplicationController
	def index
		@tweet = Tweet.new

		if user_signed_in?
			@followed_tweets = current_user.tweets

			current_user.followed_users.each do |user|
				@followed_tweets = @followed_tweets + user.tweets
			end

			@followed_tweets = @followed_tweets.sort_by(&:created_at).reverse
		end


	end

	def user_list
		@users = User.all(:select => "id, email")
	end
end
