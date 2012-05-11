require 'spec_helper'

describe Giffer::GifBin do
  let(:client){ Giffer::GifBin.new }
  
  context 'when randomly pulling gifs' do
    it 'knows the source uri' do
      client.uri.should match(/www.gifbin.com/)
    end
  
    it 'knows the xpath to use to find the image' do
      client.xpath.should_not be_nil
    end
    
    it 'returns the URL of a random gif' do
      client.gif_href.should match(/gifs.gifbin.com.*gif/)
    end
    
    it 'retrieves source HTML page' do
      page = client.retrieve_page
      page.should match(/Gifs Updated Daily - Gif Bin/)
    end
  end
  
end
