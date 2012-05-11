module Giffer
  class GifBin < HttpClient
    
    def uri
      'http://www.gifbin.com/f/random'
    end
    
    def xpath
      "//img"
    end
    
  end
end
