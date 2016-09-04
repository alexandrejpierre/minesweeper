module Api
	class RankingsController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def index
			#List of scores corresponding to the level required
			@table=Leaderboard.where("level = ?",ranking_params[:level])
			#List of the ten best scores on the level
			@a=@table.order(:score).first(10)
			#Best score of the user on the level
			@b=@table.where("name = ?",ranking_params[:name]).order(:score).first
			#Concatenation
			@a.append(@b)
			#Addition of the rank
			@a.each do |x|
				x.assign_attributes(rank: @table.where("score < ?",x.score).count + 1)
			end
			respond_with @a
		end
	
		
		private
		
		def ranking_params
			params.require(:ranking).permit(:name,:level)
		end
		

	end
end

