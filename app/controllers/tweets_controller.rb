class TweetsController < ApplicationController

	def create
		@tweet = current_user.tweets.create(tweet_params)
		redirect_to :root
	end

	private
	def tweet_params
		params.require(:tweet).permit(:message)
	end

end
