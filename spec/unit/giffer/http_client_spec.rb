require 'spec_helper'

describe Giffer::HttpClient do
  let(:client){ Giffer::HttpClient.new }
  
  context 'on abstract methods' do
    it 'raises an error' do
      lambda { client.uri }.should raise_error
      lambda { client.xpath }.should raise_error
    end
  end
  
end
