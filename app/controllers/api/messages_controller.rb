module Api
	class MessagesController < ApplicationController
		#15.08.2016: added the authentication before the action
		before_action :authenticate_token!
		
		respond_to :json
		
		def index
			@messages = Message.all
			respond_with @messages
		end
		
	end
end
