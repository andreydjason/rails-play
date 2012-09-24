module ApplicationHelper

	#------------------------------
  def current_full_domain_url
    "#{request.protocol}#{request.host_with_port}#{request.fullpath}"
  end

end
