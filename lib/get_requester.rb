require 'net/http'
require 'open-uri'
require 'json'

class GetRequester 

  attr_accessor :url

  def initialize(url)
    self.url = url 
  end 
  
  def get_response_body
    uri = URI.parse(self.url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    responses = JSON.parse(self.get_response_body)
  end
  
end
  
get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
get_requester.parse_json
