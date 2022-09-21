require "uri"
require "json"
require "net/http"

url = URI("https://ipinfo.io")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)
response = https.request(request)
country = JSON.parse(response.read_body)['country']

url = URI("https://api.logsnag.com/v1/log")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Post.new(url)
request["Authorization"] = "Bearer 2f0420e7710703268ea2ab32f493c887"
request["Content-Type"] = "application/json"
request.body = JSON.dump({
  "project": "salfati-group-cloud",
  "channel": "nopeus-downloads",
  "event": "New Download",
  "icon": "⬇️",
  "tags": {
    "country": country
  }
})

response = https.request(request)
