class SignpostLink < Middleman::Extension
    def initialize(app, options_hash={}, &block)
      super
    end
  
    helpers do
      def signpost_link(url, text, external)
       
"<div class='dfeuk-action-link'><a #{if external === true then 'target=_blank' else '' end} class='dfeuk-action-link__link' href='#{url}'><svg class='dfeuk-icon dfeuk-icon__arrow-right-circle' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' aria-hidden='true' width='36' height='36'>
<path d='M0 0h24v24H0z' fill='none'></path>
<path d='M12 2a10 10 0 0 0-9.95 9h11.64L9.74 7.05a1 1 0 0 1 1.41-1.41l5.66 5.65a1 1 0 0 1 0 1.42l-5.66 5.65a1 1 0 0 1-1.41 0 1 1 0 0 1 0-1.41L13.69 13H2.05A10 10 0 1 0 12 2z'></path>
</svg>
<span class='dfeuk-action-link__text'>#{text}</span>
</a>
</div>
"
      end
    end
  end
  
  ::Middleman::Extensions.register(:signpost_link, SignpostLink)