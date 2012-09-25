class ApplicationController < ActionController::Base
  
  protect_from_forgery

  before_filter :get_router_model_and_version


  #------------------------------
  def get_router_model_and_version(options = {})
    @router_model = nil

    @_i_get_how_this_works = false

    # TODO: I need to study how this works...
    # Get the firmware version
    # (I'm thinking in making with an access througth web interface using nokogiri or something like web automating test to do it - its the quickly and easy way)
    case @_i_get_how_this_works
    when true
      raise AwesomeError, "Awesome! Go programing now!"
    when false
      @router_model = :DLink524
      @router_version = '2.07'
    end

    @router_model_and_version = "#{@router_model} v#{@router_version}"
  end

end
