class YelpInterface < ActiveRecord::Base

    @@client = Yelp::Client.new({ consumer_key: yelp_consumer_key,
                            consumer_secret: yelp_consumer_secret,
                            token: yelp_token,
                            token_secret: yelp_token_secret
                          })


    def self.make_search_call(terms,location='Chicago',limit=4)
      params = {limit:limit.to_i,location:location}
      @@client.search(terms,params)
    end

    def self.make_business_call

    end


end
