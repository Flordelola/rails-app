class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    return if tweet.published?
    
    #Rescheduled a tweet to the future
    return if tweet.published? > Time.current

    tweet.publish_to_twitter!
  end
end

# Push the publish_at forward
# noon -> 8am
# -
# 8am -> sets tweet id
# Noon -> published, does nothing

# Push the publish_at forward
# 9am -> 1pm
# -
# 9am -> should do nothing
# Noon -> should publish the tweet and set tweet id