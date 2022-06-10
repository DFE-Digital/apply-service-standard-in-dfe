class ExternalLink < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def external_link(url, text)
      "<a href='#{url}' rel='noopner noreferrer' target='_blank'>#{text}</a>"
    end
  end
end

::Middleman::Extensions.register(:external_link, ExternalLink)