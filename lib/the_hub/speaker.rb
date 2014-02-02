module TheHub
  module Speaker
    SELECTOR = /^speakers\/[^\/]+\.html$/

    def name
      data[:name]
    end

    def twitter
      data[:twitter]
    end

    def site
      data[:site]
    end

    def interview
      data[:interview]
    end

    def talk
      @app.sitemap.where(:type => 'talk', :speaker => name)
    end
  end
end
