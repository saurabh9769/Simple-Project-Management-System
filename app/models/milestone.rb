class Milestone < ActiveRecord::Base

	has_many :tasks
	belongs_to :projec
end
