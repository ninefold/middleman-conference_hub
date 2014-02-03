module TheHub
  module Talk
    SELECTOR = /^talks\/[^\/]+\.html$/

    def title
      data[:title]
    end

    def session
      data[:session]
    end

    def day
      data[:day]
    end

    def video
      data[:video]
    end

    def speaker
      data[:speaker]
    end

    def room
      data[:room]
    end

    def preview
      @app.preview_for_talk(eponymous_directory_path)
    end

    def body
      render :layout => false
    end

    def notes
      @app.notes_for_talk(eponymous_directory_path)
    end
  end
end
