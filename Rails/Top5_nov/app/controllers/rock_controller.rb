class RockController < ApplicationController
  
	def roll
		@count = 1
		@songs = Song.order(rating: :desc).limit(5)

  end

  def top_artist
  	@count = 1
  	@artists = Artist.order(rating: :desc).limit(5)

  end
  	
end
