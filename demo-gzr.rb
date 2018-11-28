
require 'rubygems'
require 'git'



dashboards = [159]

looks = []

dashboards.each do |dashboard|
	print dashboard

  result = system("gzr dashboard cat #{dashboard} --host demo.looker.com > temp")

	system("cmp --silent temp dashboards/#{dashboard} && echo '#{dashboard}: - No Change' || mv temp dashboards/#{dashboard}")
  # system("rm temp")
end




  Git.configure do |config|
    # If you want to use a custom git binary
    # config.binary_path = '/.git/index'

    # If you need to use a custom SSH script
    config.git_ssh = '/Users/haarthisadasivam/.ssh/haarthi_github.pub'
    # config.git_ssh = '/'

  end

  # g = Git.open('/Users/haarthisadasivam/gazer_demo')


  g = Git.init
   Git.init('/Users/haarthisadasivam/gazer_demo')
   # Git.init('/home/schacon/proj',
   #  { :repository => '/opt/git/proj.git',
   #     :index => '/tmp/index'} )

  # print g.index

  # print g.add

  if (!g.status.nil?)
    print g.status.changed
    print "there is a diff"
    g.add(:all=>true)    
    print g.commit("my message7")

    system("g.push")

  else 
    print "no diff"
  end


  # print g.push
