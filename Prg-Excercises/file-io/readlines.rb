require 'open-uri'
require 'rest-client'
require 'pry'
# Reads hamlet.txt from the given URL
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"

# Saves it to a local file on your hard drive named "hamlet.txt"
local_page_name = "hamlet.txt"

File.open(local_page_name,"w") { |somefile| somefile.write(RestClient.get(url))}

# Re-opens that local version of hamlet.txt and prints out every 42nd line to the screen
File.open("hamlet.txt","r"){|file|
  file.readlines.each_with_index { |line, line_num|
     #binding.pry
     #puts open(url).readline
     puts line if line_num % 42 == 41
  }
}
