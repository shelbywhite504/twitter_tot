class EpicenterController < ApplicationController
  def feed
    # @following_tweets = Tweet.where(user_id: current_user.following).or(user_id: User.find(1).id)
      @following_tweets = []

       # Tweet.all.each do |tweet|
       # if current_user.following.include?(tweet.user_id)
       #   || current_user.id == tweet.user_id
       #   @following_tweets.push(tweet)
       # end

   # personal better equivalent of the above
   array_of_users = current_user.following
   array_of_users << current_user.id
   @following_tweets - Tweet.where(user_id: array_of_users)
end

  def show_user
  end

  def now_following
  end

  def unfollow
  end
end
