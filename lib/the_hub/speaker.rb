module TheHub
  module Speaker
    SELECTOR = /^speakers\/[^\/]+\.html$/

    def name
      data[:name]
    end

    def twitter
      data[:twitter]
    end

    def github
      data[:github]
    end

    def site
      data[:site]
    end

    def interview
      data[:interview]
    end

    def image
      data[:image]
    end

    def description
      data[:description]
    end

    def video_link
      data[:video_link]
    end

    def video_summary
      data[:video_summary]
    end

    def video_thumbnail
      "video_thumbs/#{name.parameterize}.jpg"
    end

    def talk
      @app.sitemap.where(:type => 'talk', :speaker => name).first
    end

    def workshop
      @app.sitemap.where(:type => 'workshop', :speaker => name).first
    end
  end
end
