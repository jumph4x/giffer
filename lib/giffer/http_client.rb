require 'net/http'
require 'nokogiri'

module Giffer
  class HttpClient
    
    def gif_href
      doc = Nokogiri::HTML(retrieve_page)
      doc.xpath(xpath).attribute('src').to_s
    end
    
    def retrieve_page
      parsed_uri = URI(uri)
      Net::HTTP.get(parsed_uri)
    end
    
    def xpath
      raise 'Abstract, please do the OOP thang.'
    end
    
    def uri
      raise 'Abstract, please do the OOP thang.'
    end
    
  end
end
