class StudentAction < ActiveRecord::Base
	belongs_to :student
	belongs_to :action_type
end
