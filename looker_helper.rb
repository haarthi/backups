require 'rubygems'
require 'git'
require 'json'



module LookerHelper 

	def self.initialize

	end


	def self.get_dashboard_space_id(dashboard_id)
		file = File.read("dashboards/#{dashboard_id}")
		dashboard_metadata = JSON.parse(file, object_class: OpenStruct).to_h
		return dashboard_metadata[:space][:id].to_s
	end

	def self.get_look_space_id(look_id)
		file = File.read("dashboards/#{dashboard_id}")
		look_metadata = JSON.parse(file, object_class: OpenStruct).to_h
		return dashboard_metadata[:space][:id].to_s
	end

end