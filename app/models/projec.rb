class Projec < ActiveRecord::Base
	has_many :milestones
	belongs_to :user
end
