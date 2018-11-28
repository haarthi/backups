
require 'rubygems'
require 'git'
require 'json'
# require "active_support/core_ext/hash"



# sdk = LookerSDK::Client.new(
#   :client_id => "4CN7jzm7yrkcy2MC4CCG",
#   :client_secret => "Js3rZZ7vHfbc2hBynSj7zqKh",
#   :api_endpoint => "https://demo.looker.com:19999/api/3.0"
# )


# dashboards = [159, 160, 161, 1116]

# looks = []

# dashboards.each do |dashboard|
# 	print dashboard

#   result = system("gzr dashboard cat #{dashboard} --host demo.looker.com > temp.json")

#   system("test -f dashboards/#{dashboard} || touch dashboards/#{dashboard}")

# 	system("cmp --silent temp.json dashboards/#{dashboard} && echo '#{dashboard}: - No Change' || mv temp.json dashboards/#{dashboard}")
#   # system("rm temp")
# end



def push_change_to_git
  Git.configure do |config|
    config.git_ssh = '/Users/haarthisadasivam/.ssh/haarthi_github.pub'
  end

  # g = Git.open('/Users/haarthisadasivam/gazer_demo')


  g = Git.init
   Git.init('/Users/haarthisadasivam/gazer_demo')

  if (!g.status.nil?)
    print "there is a diff"
    g.add(:all=>true)    
    g.commit("Changes, " + Time.now.getutc.to_s)
    system("git push")
  end
end

push_change_to_git()




  # file = File.read('temp1.json')

  # dashboard_metadata = JSON.parse(file, object_class: OpenStruct).to_h

  # # person = JSON.parse(json_string, object_class: OpenStruct)

  # puts dashboard_metadata.class




  # print "My ID" + json_object[:space][:id].to_s

  # json_object = json_object.except!(:id)

  # json_object = json_object.reject { |k, v| [:title, :space].include? k }


  # puts json_object




  # print "My ID" + json_object[:title]


    # print "My ID" + json_object.title


    # system("cmp #{json_object} > test1.json")


  # print data_hash



  # Git.configure do |config|
  #   # If you want to use a custom git binary
  #   # config.binary_path = '/.git/index'

  #   # If you need to use a custom SSH script
  #   config.git_ssh = '/Users/haarthisadasivam/.ssh/haarthi_github.pub'
  #   # config.git_ssh = '/'

  # end

  # # g = Git.open('/Users/haarthisadasivam/gazer_demo')


  # g = Git.init
  #  Git.init('/Users/haarthisadasivam/gazer_demo')
  #  # Git.init('/home/schacon/proj',
  #  #  { :repository => '/opt/git/proj.git',
  #  #     :index => '/tmp/index'} )

  # # print g.index

  # # print g.add

  # if (!g.status.nil?)
  #   print g.status.changed
  #   print "there is a diff"
  #   g.add(:all=>true)    
  #   g.commit("my message8")

  #   system("git push")

  # else 
  #   print "no diff"
  # end


  # print g.push
