class BasicPanel < Middleman::Extension
    def initialize(app, options_hash={}, &block)
      super
    end
  
    helpers do
      def basic_panel(content)
        <<~EOS
        <div class='dfe-panel'>
        <p>#{content}</p>
        </div>
        EOS
      
      end
    end
  end
  
  ::Middleman::Extensions.register(:basic_panel, BasicPanel)
