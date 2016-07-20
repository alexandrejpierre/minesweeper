class Message < ActiveRecord::Base
	validates :usage, :inclusion => { :in => ["Win","Lose"]}
	
	#06.06.2016: overrides the as_json method to only display the id, usage and body in the API
	def as_json(options={})
		super(only: [:usage,:body])
	end
	
end
