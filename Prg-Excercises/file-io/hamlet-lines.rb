require 'open-uri'
require 'rest-client'
require 'pry'
# Reads hamlet.txt from the given URL
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"

# Saves it to a local file on your hard drive named "hamlet.txt"
local_page_name = "hamlet.txt"

File.open(local_page_name,"w") { |somefile| somefile.write(RestClient.get(url))}

File.open("hamlet.txt","r"){|file|
  file.readlines.each {|line|
    #binding.pry
    puts line if /\s\sHam.\s/.match(line)
  }
}
