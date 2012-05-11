# Giffer

This thing will give you gifs. 

## Wut it dew?

It cURLs a www.gifbin.com URL and parses out the URL for your random GIF

## Usage

```ruby
require 'giffer'
client = Giffer::GifBin.new
5.times { puts client.gif_href }
```

## Why?

Because every consumer-facing Rails project needs an Easter Egg. 
