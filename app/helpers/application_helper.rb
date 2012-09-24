module ApplicationHelper

	#------------------------------
  def full_current_domain_url
    "#{request.protocol}#{request.host_with_port}"
  end

  #------------------------------
  def full_current_domain_url_with_fullpath
    "#{full_current_domain_url}#{request.fullpath}"
  end

end
