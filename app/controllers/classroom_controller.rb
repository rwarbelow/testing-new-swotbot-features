class ClassroomController < ApplicationController
	# respond_to :html, :js

	def index
		@students = Student.all
	end

	def update
		respond_to do |format|
      format.html { redirect_to root_path }
      format.json  do
				# p params
				student_ids = params["students"]
				action_type = params["actionType"]
				action 			= ActionType.find_by_name(action_type)

				array = student_ids.each do |id|
					StudentAction.create(student_id: id.to_i, action_type_id: action.id)
				end
				p array

				render :json => {
					status: :ok,
					studentIds: student_ids,
					actionType: action_type
      	}.to_json

			end
    end

		# student_ids = params["student_ids"].reject!(&:empty?)
		#

		#
		# @message = "#{action.name.capitalize} recorded for #{student_ids.count} students."
	end
end
