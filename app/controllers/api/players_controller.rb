module Api
	class PlayersController < ApplicationController
		#30.07.2016: added the oken authentication
		before_action :authenticate_token!
		
		respond_to :json
		
		def index
			@player=Player.all
			respond_with @player
		end
	
		def create
			@player = Player.new(player_params)
			respond_with @player 
			
		end	
		
		private
		
		def player_params
			params.require(:player).permit(:name)
		end
		
	end
end
