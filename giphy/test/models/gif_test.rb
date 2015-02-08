module GifData
    DATA = {
        type: "gif",
        id: "OwTq3LIOAE5vG",
        url: "http://giphy.com/gifs/transparent-OwTq3LIOAE5vG",
        bitly_gif_url: "http://gph.is/16NXZPz",
        bitly_url: "http://gph.is/16NXZPz",
        embed_url: "http://giphy.com/embed/OwTq3LIOAE5vG",
        username: "",
        source: "http://lavagoth.tumblr.com/post/110237354115",
        rating: "pg",
        caption: "",
        content_url: "",
        import_datetime: "2015-02-06 08:33:33",
        trending_datetime: "2015-02-06 20:02:40",
        images: {
            fixed_height: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/200.gif",
                width: "284",
                height: "200",
                mp4: "http://media.giphy.com/media/OwTq3LIOAE5vG/200.mp4"
            },
            fixed_height_still: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/200_s.gif",
                width: "284",
                height: "200"
            },
            fixed_height_downsampled: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/200_d.gif",
                width: "284",
                height: "200"
            },
            fixed_width: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/200w.gif",
                width: "200",
                height: "141",
                mp4: "http://media.giphy.com/media/OwTq3LIOAE5vG/200w.mp4"
            },
            fixed_width_still: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/200w_s.gif",
                width: "200",
                height: "141"
            },
            fixed_width_downsampled: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/200w_d.gif",
                width: "200",
                height: "141"
            },
            fixed_height_small: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/100.gif",
                width: "142",
                height: "100"
            },
            fixed_height_small_still: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/100_s.gif",
                width: "142",
                height: "100"
            },
            fixed_width_small: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/100w.gif",
                width: "100",
                height: "71"
            },
            fixed_width_small_still: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/100w_s.gif",
                width: "100",
                height: "71"
            },
            downsized: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/giphy.gif",
                width: "200",
                height: "141",
                size: "162794"
            },
            downsized_still: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/giphy_s.gif",
                width: "200",
                height: "141"
            },
            original: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/giphy.gif",
                width: "200",
                height: "141",
                size: "162794",
                frames: "60",
                mp4: "http://media.giphy.com/media/OwTq3LIOAE5vG/giphy.mp4"
            },
            original_still: {
                source: "http://media1.giphy.com/media/OwTq3LIOAE5vG/giphy_s.gif",
                width: "200",
                height: "141"
            }
        }
    }
end

require 'test_helper'

class GifTest < ActiveSupport::TestCase
    test "initialize gif with params" do
        gif = Gif.new(GifData::DATA)
        assert_equal(gif.source, GifData::DATA['images']['original']['url'])
    end

end
