require "net/http"

uri = URI.parse('https://api-tls11.friendbuy.com')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

request = Net::HTTP::Get.new(uri.request_uri)

response = http.request(request)
puts response.body