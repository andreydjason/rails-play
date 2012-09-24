class User < ActiveRecord::Base

	#------------------------------
	def full_name
		"#{first_name} #{last_name}"
	end

	#------------------------------
	def academic_full_name
		"#{last_name}, #{first_name}"
	end

end
