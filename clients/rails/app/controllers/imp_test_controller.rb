require 'net/http'

class ImpTestController < ApplicationController
  def index
    url = URI.parse('http://dungeon-imp.herokuapp.com/hello')
    req = Net::HTTP::Get.new(url.to_s)
    @res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
  end
end
