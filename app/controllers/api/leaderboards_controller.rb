module Api
	class LeaderboardsController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def index
			#List of scores corresponding to the level required
			@table=Leaderboard.where("level = ?",params[:level])
			#List of the ten best scores on the level
			@a=@table.order(:score).first(10)
			#Best score of the user on the level
			@b=@table.where("name = ?",params[:name]).order(:score).first
			#Concatenation
			if !@b.nil? and @a.where("name= ?",params[:name]).first.nil?
					@a.append(@b)
			end
			#Addition of the rank
			@a.each do |x|
					x.assign_attributes(rank: @table.where("score < ?",x.score).count + 1)
			end
			respond_with @a
		end
	
		def create
			@leaderboard = Leaderboard.new(leaderboard_params)
			@leaderboard.save
			respond_with @leaderboard 
		end	
		
		private
		
		def leaderboard_params
			params.require(:leaderboard).permit(:name,:level,:score)
		end
		

	end
end

