class Blog < ActiveRecord::Base
	
	include HasGravatar
	has_many :answer
end
