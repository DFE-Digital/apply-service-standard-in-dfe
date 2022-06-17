class ExamplePanel < Middleman::Extension
    def initialize(app, options_hash={}, &block)
      super
    end
  
    helpers do
      def example_panel(title, content)
        <<~EOS
        <div class='dfeuk-example-callout'>
        <h3 class='dfeuk-tag dfeuk-example-callout__heading'>
        <span role='text'>
       <span class='dfeuk-u-visually-hidden'>Important: </span>#{title}</span></h3>
       #{content}
        </div>
        EOS
      
      end
    end
  end
  
  ::Middleman::Extensions.register(:example_panel, ExamplePanel)