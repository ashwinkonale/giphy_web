class TrendingGifsController < ApplicationController
  include GiphyApi
  def index
    @images = get_trending_images(5)
  end
end
