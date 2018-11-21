puts "Hello World"

dashboards = [159, 8]

dashboards.each do |dashboard|


    system("gzr dashboard cat #{dashboard} --host demo.looker.com > dashboards/#{dashboard}")

     # --host demo.looker.com')
end

# % Shellwords.escape(song.file)


# system 'echo', untrusted  

# system("gzr --help")

