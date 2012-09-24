class ApplicationController < ActionController::Base
  
  protect_from_forgery

  before_filter :discover_router_model


  #------------------------------
  def discover_router_model(options = {})
    @router_model = nil

    @_i_discover_how_this_works = false

    # I need to study how this works...
    case @_i_discover_how_this_works
    when true
      raise AwesomeError, "Awesome! Go programing now!"
    when false
      @router_model = :DLink524
    end
  end

end
