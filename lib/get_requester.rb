require 'net/http'
require 'open-uri'
require 'json'

class GetRequester 

  attr_accessor :url

  def initialize(url)
    self.url = url 
  end 
end
