
require 'rubygems'
require 'git'
require 'json'

require_relative 'git.rb'
require_relative 'looker_helper'




dashboards = [159, 160, 161, 1116]

looks = []

dashboards.each do |dashboard|
	print dashboard

  result = system("gzr dashboard cat #{dashboard} --host demo.looker.com > temp.json")

  system("test -f dashboards/#{dashboard} || touch dashboards/#{dashboard}")

	system("cmp --silent temp.json dashboards/#{dashboard} && echo '#{dashboard}: - No Change' || mv temp.json dashboards/#{dashboard}")

end

GitHelper.push_change_to_git




def revert_dashboard(commit_id, dashboard_id)

  LookerHelper.get_dashboard_space_id(111)

  dashboard = read_file_as_json(file_path)
  space_id = dashboard[:space_id]

  new_dashboard = g.show("#{commit_id}:dashboards/#{dashboard_id}")
  print new_dashboard
  
  # system("gzr dashboard import #{file_path} #{space_id} --host demodev.looker.com")
end

def revert_look(commit_id, look_id)
end


# revert_dashboard("clear", 111)


# g = Git.init('/Users/haarthisadasivam/gazer_demo')

 # g.show('HEAD')


# print Git.ls_remote('/dashboards/dashboard_id')


# print g.show("2379423b658409202d167ca5ec1f9f2f1ca8fd50:dashboards/1116")

# method commit_history 


# check_content_difference
# reconfig_all_space
# revert_dashboard
# revert_look 


# push_change_to_git()



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
