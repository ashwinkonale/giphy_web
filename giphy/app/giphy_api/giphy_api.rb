require 'net/http'
require 'json'

module GiphyApi

  def get_trending_images(image_count)
    api_key = GIPHY_KEYS['key']
    url = "http://api.giphy.com/v1/stickers/trending?&api_key=#{api_key}&limit=#{image_count}"
    resp = Net::HTTP.get_response(URI.parse(url))
    buffer = resp.body
    result = JSON.parse(buffer)
    result['data'].map{|data| Gif.new(data)}
  end

end

