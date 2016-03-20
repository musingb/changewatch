
#Function changewatch monitors for changes with 'path' as the parameter
def changewatch(path)
require 'filewatcher'

FileWatcher.new(path).watch() do |filename, event |   #(["*.txt"])
if(event == :changed)
puts "file updated  " + filename
end

if(event == :delete)
puts "file Deleted  " + filename
end

if(event == :new)
puts "file added  " + filename
end

end

end
#Open the file with the path to the folder to monitor
File.open("C:/users/HomePC/desktop/urls.yml", "r") do |f|
f.each_line do |line|
path =  line.to_s

changewatch(path)

end
end
