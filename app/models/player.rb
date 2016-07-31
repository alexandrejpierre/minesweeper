class Player < ActiveRecord::Base
	#24.06.2016: validates that the player has a name, and that this name does not already exist
	validates :name, presence: true, uniqueness: true
end
