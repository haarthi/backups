
require 'rubygems'
require 'git'
   require 'json'



# sdk = LookerSDK::Client.new(
#   :client_id => "4CN7jzm7yrkcy2MC4CCG",
#   :client_secret => "Js3rZZ7vHfbc2hBynSj7zqKh",
#   :api_endpoint => "https://demo.looker.com:19999/api/3.0"
# )


dashboards = [159]

looks = []

dashboards.each do |dashboard|
	print dashboard

  result = system("gzr dashboard cat #{dashboard} --host demo.looker.com > temp.json")


  file = File.read('temp.json')
  data_hash = JSON.parse(file)

	# system("cmp --silent temp.json dashboards/#{dashboard} && echo '#{dashboard}: - No Change' || mv temp dashboards/#{dashboard}")
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
    g.commit("my message8")

    system("git push")

  else 
    print "no diff"
  end


  # print g.push
