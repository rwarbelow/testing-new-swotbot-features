class DashboardController < ApplicationController
	def index
	end

	def messages
		@actions = StudentAction.all.sort! { |a, b| b.created_at <=> a.created_at }
		respond_to do |format|
			format.js
		end
	end
end
