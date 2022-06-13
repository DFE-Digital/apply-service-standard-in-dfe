

class BackToTop < Middleman::Extension
    def initialize(app, options_hash={}, &block)
      super
    end
  
    helpers do
      def back_to_top(h1)
        <<~EOS
        <a href="##{h1}" class="dfe-back-to-top">Back to the top of the page</a>
        EOS
      
      end
    end
  end
  
  ::Middleman::Extensions.register(:back_to_top, BackToTop)