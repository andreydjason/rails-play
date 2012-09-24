class HttpErrorsController < ApplicationController

	before_filter :set_original_expection


	#------------------------------
	def not_found
	end


	#------------------------------
	def server_error
	end

	
	private

		#------------------------------
		def set_original_expection
			@original_expection = env["action_dispatch.exception"]
		end

end
