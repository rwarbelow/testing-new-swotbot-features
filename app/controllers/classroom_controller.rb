class ClassroomController < ApplicationController
	respond_to :html, :js

	def index
		@students = Student.all
	end

	def update
		student_ids = params["student_ids"].reject!(&:empty?)
		action = ActionType.find_by_name(params["commit"])
		student_ids.each do |id|
			StudentAction.create(student_id: id, action_type_id: action.id)
		end
		@message = "#{action.name.capitalize} recorded for #{student_ids.count} students."
	end

end
