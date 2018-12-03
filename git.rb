require 'rubygems'
require 'git'
require 'json'



module GitHelper 

	def self.initialize
		Git.configure do |config|
	    	config.git_ssh = '/Users/haarthisadasivam/.ssh/haarthi_github.pub'
	  	end
	  	return Git.init('/Users/haarthisadasivam/gazer_demo')
	end


	def self.push_change_to_git
		g = self.initialize
		if (!g.status.nil?)
			g.add(:all=>true)    
			g.commit("Changes, " + Time.now.getutc.to_s)
			system("git push")
		end
	end

end