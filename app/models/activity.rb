class Activity < ActiveRecord::Base
	validates :name, presence: true
	validates :level, :inclusion => { :in => ["Easy","Medium","Hard"]}
end
