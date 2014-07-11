class DashboardController < ApplicationController
	def index
	end

	def messages
		@student_actions = StudentAction.order(:created_at).reverse_order.limit(50)
		respond_to do |format|
			format.js
		end
	end
end
