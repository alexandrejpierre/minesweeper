class Activity < ActiveRecord::Base
	validates :level, :inclusion => { :in => ["Easy","Medium","Hard"]}
end
