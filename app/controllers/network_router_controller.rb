class NetworkRouterController < ApplicationController

	#------------------------------
	# Interface to control router filters
	def control_mac_filters
		case @router_model
		when :DLink524 # Firmware version 2.07
			# The 'options' are the same HTML element (<input type="RADIO" name="_EF">)
			# and has no way to select one if not by selecting by the index of the element:
			# [0] - Disabled MAC Filters
			# [1] - Only allow computers with MAC address listed below to access the network
			# !!!NEVER USE THIS!!! # [2] - Only deny computers with MAC address listed below to access the network # !!!NEVER USE THIS!!! # - This is especifically for my case :)
			@mac_filter_url = 'http://192.168.0.1/pmac.htm'
			option_mac_disable = 0
			@option_mac_enable = 1
			# @option_mac_disable_all = 2
		else
			raise StandardError, 'No other Router configured yet.'
		end

		#...
	end

end
