class EpicenterController < ApplicationController



before_filter :authenticate_user!, except: [:show_user]
	
  def feed
    @new_tweet = Tweet.new
  	@following_tweets = []

  	Tweet.all.each do |tweet|
  		if current_user.following.include?(tweet.user_id)
  			@following_tweets.push(tweet)
  		end
  	end		

  end

  def show_user
  	@user = User.find(params[:id])
  	@tweet = Tweet.where(user_id: (params[:id]))
    
    @new_tweet = Tweet.new
    

  end

  def now_following
  	@user = User.find(params[:id].to_i)
  	current_user.following.push(params[:id].to_i)
  	current_user.save
  
  end

  def unfollow
		@user = User.find(params[:id].to_i)


		  	current_user.following.delete(params[:id].to_i)
		  	current_user.save
		  	
		  

  end

  def show_all_users
    @all_users = User.all


  end 


  def epi_tweet
    # redirect_to @tweet(user_id: params[:id].to_i, message: params[:message]) 
    
     @tweet = Tweet.new

#our parameters are received as an array of hashes, so we have to dig down into the layers #tweets_path to get our data. 
    @tweet.message = "#{params[:tweet][:message]}"
    @tweet.user_id = "#{params[:tweet][:user_id].to_i}"
    @tweet.save
    redirect_to root_path



  end  

  def following

    @users = []

    User.all.each do |user|
      if current_user.following.include?(user.id)
        @users.push(user)
      end
    end
  end

  def followers
    @users = []

    User.all.each do |user|
      if user.following.include?(current_user.id)
        @users.push(user)
      end
    end
  end

  def tag_tweets
    @tag = Tag.find(params[:id])

  end 

end













