class Cangaroo::TweetProductJob < Cangaroo::Job
  connection 'twitter'
  path '/send_tweet'
  parameters({
    consumer_key: ENV['twitter_consumer_key'],
    consumer_secret: ENV['twitter_consumer_secret'],
    access_token: ENV['twitter_access_token'],
    access_token_secret: ENV['twitter_token_secret']
  })

  def transform
    {
      tweet: {
        body: "Hey, we have a new awsome product #{payload['name']} http://localhost:3000/products/#{payload['permalink']}"
      }
    }
  end

  def perform?
    type == 'products' &&
      payload['created_at'] == payload['updated_at']
  end
end
