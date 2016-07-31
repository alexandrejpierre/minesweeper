module Api
	class ActivitiesController < ApplicationController
		before_action :authenticate_token!
		
		respond_to :json
		
		def index
			@activity=Activity.all
			respond_with @activity
		end
	
		def create
			@activity = Activity.new(activity_params)
			@activity.save
			respond_with @activity 
			
		end	
		
		private
		
		def activity_params
			params.require(:activity).permit(:name,:level)
		end
		
	end
end
