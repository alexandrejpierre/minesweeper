class Leaderboard < ActiveRecord::Base
	validates :name, presence: true
	validates :level, :inclusion => { :in => ["Easy","Medium","Hard"]}
	validates :score, presence: true
	
	
end
