require 'httparty'

response = HTTParty.get('http://bbc.co.uk/news') #the gem allows us to write this as if it is url


puts response
puts response.code
puts response.message
