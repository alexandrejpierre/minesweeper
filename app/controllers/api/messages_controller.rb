module Api
	class MessagesController < ApplicationController
		respond_to :json
		
		def index
			@messages = Message.all
			respond_with @messages
		end
		
	end
end
