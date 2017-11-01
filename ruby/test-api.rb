require "net/http"

uri = URI.parse('https://api-tls11.friendbuy.com')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

begin
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
    puts response.body
rescue Errno::ECONNRESET => e
    puts "TLS 1.1 is not supported. Please upgrade your integration."
end