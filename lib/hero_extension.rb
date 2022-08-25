class Hero < Middleman::Extension
    def initialize(app, options_hash={}, &block)
      super
    end
  
    helpers do
      def hero(title, text)
        <<~EOS
<div class="dfe-hero">
  <div class="govuk-grid-row">
    <div class="govuk-grid-column-three-quarters">
      <h1 class="govuk-heading-xl govuk-!-font-size-48">#{title}</h1>
      <p class="govuk-body-l">#{text}</p>
    </div>
    <div class="govuk-grid-column-one-quarter standards-icon">
    </div>
  </div>
</div>
EOS
      end
    end
  end
  
  ::Middleman::Extensions.register(:hero, Hero)