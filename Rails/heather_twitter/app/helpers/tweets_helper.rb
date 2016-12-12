module TweetsHelper


def get_tagged(tweet)
				#Create an empty array to store an instance of our TweetTag data
				tweet_tag = []

        message_arr = tweet.message.split
        message_arr.each_with_index do |word, index|
            if word[0] == "#"
                if Tag.pluck(:phrase).include?(word)
                    tag = Tag.find_by(phrase: word)
                else
                    tag = Tag.create(phrase: word)
                end

                #Below we create a TweetTag record for our model, but we still don't have a tweet.id assigned, so it is initially being created as nil.
                tweet_tag = TweetTag.create(tweet_id: tweet.id, tag_id: tag.id)
                message_arr.delete(word)
                message_arr[index] = "<a href='/tag_tweets?id=#{tag.id}'>#{word}</a>"
                #message_arr[index] = "<%= link_to #{word}, tag_tweets_path(id: #{tag.id}) %>"
            end
        end

        #tweet.message = message_arr.join(" ")
        tweet.update(message: message_arr.join(" "))

        #Stores the newly assigned  tweet.id into out TweetTag model tying it to the tag.id.
        tweet_tag.update(tweet_id: tweet.id)
        return tweet

        




	end	
end
