
require 'rubygems'
require 'git'



dashboards = [159, 8]

looks = []

dashboards.each do |dashboard|
	print dashboard

    # result = system("gzr dashboard cat #{dashboard} --host demo.looker.com > temp")

	# system("cmp --silent temp dashboards/#{dashboard} && echo '#{dashboard}: - No Change' || mv temp dashboards/#{dashboard}")

end




  Git.configure do |config|
    # If you want to use a custom git binary
    # config.binary_path = '/.git/index'

    # If you need to use a custom SSH script
    config.git_ssh = '/Users/haarthisadasivam/.ssh/haarthi_github.pub'
    # config.git_ssh = '/'

  end

  g = Git.open('/Users/haarthisadasivam/gazer_demo')


  g = Git.init
   Git.init('/Users/haarthisadasivam/gazer_demo')
   # Git.init('/home/schacon/proj',
   #  { :repository => '/opt/git/proj.git',
   #     :index => '/tmp/index'} )

  # print g.index

  print g.config

  print g.add
  print g.commit("my message3")
  g.push
  # system("g.push")


    # system("cmp --silent temp dashboards/#{dashboard} && echo '#{dashboard}: - No Change' || mv temp dashboards/#{dashboard}")



       # g = Git.init
       # Git.init('/Users/haarthisadasivam/gazer_demo')
       # Git.init('/Users/haarthisadasivam/gazer_demo',
        # { :repository => 'git@github.com:haarthi/backups.git'
          # ,
           # :index => '/tmp/index'
         # } )

    # g = Git.open('git@github.com:haarthi/backups.git')

    # g.index

    # g = Git.open('/Users//haarthisadasivam/gazer_demo')

    # g = Git.clone('git@github.com:haarthi/backups.git', '/Users/haarthisadasivam/gazer_demo/my_test')
    #  g.config('user.name', 'Scott Chacon')
    #  g.config('user.email', 'email@email.com')

    #  g.add                                   # git add -- "."
    #  g.add(:all=>true)

    # print g.log

    # print g.add                                   # git add -- "."


    # g = Git.clone 'git@github.com:haarthi/backups.git', "/Users//haarthisadasivam/gazer_demo/test"


     # g = Git.clone(repo, 'myrepo')
     # g.chdir do
     #  # new_file('test-file', 'blahblahblah')
     #  g.status.changed.each do |file|
     #   puts file.blob(:index).contents
     #  end
     # end


    # print g.index

    # g = Git.open('git@github.com:haarthi/backups.git')

    # g.index
    # g.index.readable?
    # g.index.writable?
    # g.repo
    # g.dir

     #  g = Git.init
     #   Git.init('project')
     #   Git.init('/home/haarthi/demo-add',
     #    { 
     #      :repository => '/opt/git/proj.git',
     #       :index => '/tmp/index'} 
     #       )

     # g = Git.clone(URI, NAME, :path => '/tmp/checkout')
     # g.config('user.name', 'Scott Chacon')
     # g.config('user.email', 'email@email.com')


# system("git push")