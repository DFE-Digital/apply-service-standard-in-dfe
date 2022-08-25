class CTA < Middleman::Extension
    def initialize(app, options_hash={}, &block)
      super
    end
  
    helpers do
      def fullCta(html)
        <<~EOS
<div class="fullCTA"> 
<svg xmlns="http://www.w3.org/2000/svg" height="48" width="48" fill="#ffffff"><path d="m12.1 38 10.5-14-10.5-14h3.7l10.5 14-10.5 14Zm12.6 0 10.5-14-10.5-14h3.7l10.5 14-10.5 14Z"/></svg>#{html}</div>
EOS
      end
    end
  end
  
  ::Middleman::Extensions.register(:fullCta, CTA)