require_relative 'session'
module TheHub
  class Day
    attr_reader :name

    def metadata
      # OH GOD I'M SORRY.
      @sitemap.app.data.days[code] || {}
    end

    def initialize name, sitemap
      @name, @sitemap = name, sitemap
    end

    def shortname
      name[0..2]
    end

    def pretty_name
      metadata["pretty_name"] || name
    end

    def location
      metadata["location"]
    end

    def button_name
      metadata["button_name"] || name
    end

    def code
      @name.downcase
    end

    def active? page
      if page.respond_to? :day
        page.day == @name
      else
        metadata["active"]
      end
    end

    def query
      @sitemap.where(:day => @name)
    end

    def sessions
      if @sitemap.app.sessions[code.to_sym]
        @sitemap.app.sessions[code.to_sym].map do |time|
         Session.new time, code.to_sym, @sitemap.app, query
        end
      else
        []
      end
    end

    def pre_events
      events.select {|e| e.pre? }
    end

    def post_events
      evets.select {|e| e.post?}
    end

    def events
      query.where(:type => 'event').all
    end

    def to_hash
      {
        :sessions => sessions,
        :name     => @name,
        :code     => code,
      }
    end
  end
end
