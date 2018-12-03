require 'rubygems'
require 'git'
require 'json'



module LookerHelper 

	def self.initialize

	end


	def self.get_dashboard_space_id(dashboard_id)
		file = File.read('dashboards/#{dashboard_id}')
		dashboard_metadata = JSON.parse(file, object_class: OpenStruct).to_h
		# puts dashboard_metadata.class
		# person = JSON.parse(json_string, object_class: OpenStruct)
		print "My ID: " + json_object[:space][:id].to_s
		# json_object = json_object.except!(:id)
		# json_object = json_object.reject { |k, v| [:title, :space].include? k }
		# puts json_object

	end

	def self.get_look_space_id(look_id)

	end

end