require 'rest-client'

remote_url = "https://en.wikipedia.org/wiki/Main_Page"
local_page_name = "wiki-page.html"

File.open(local_page_name,"w") { |somefile| somefile.write(RestClient.get(remote_url))}
