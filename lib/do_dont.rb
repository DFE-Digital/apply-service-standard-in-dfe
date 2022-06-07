class DoDontList < Middleman::Extension
    def initialize(app, options_hash={}, &block)
      super
    end
  
    helpers do
      def do_dont_list(arr, title, type)

        dodont_class = "dfeuk-list--tick"

        icon = "<svg class='dfeuk-icon dfeuk-icon__tick' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' aria-hidden='true' width='34' height='34'>
        <path stroke-width='4' stroke-linecap='round' d='M18.4 7.8l-8.5 8.4L5.6 12' stroke='#007f3b'></path>
      </svg>"
 

        if type === "dont"
            dodont_class = "dfeuk-list--cross" 
            icon = "<svg class='dfeuk-icon dfeuk-icon__cross' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' aria-hidden='true' width='34' height='34'><path d='M17 18.5c-.4 0-.8-.1-1.1-.4l-10-10c-.6-.6-.6-1.6 0-2.1.6-.6 1.5-.6 2.1 0l10 10c.6.6.6 1.5 0 2.1-.3.3-.6.4-1 .4z' fill='#d5281b'></path><path d='M7 18.5c-.4 0-.8-.1-1.1-.4-.6-.6-.6-1.5 0-2.1l10-10c.6-.6 1.5-.6 2.1 0 .6.6.6 1.5 0 2.1l-10 10c-.3.3-.6.4-1 .4z' fill='#d5281b'></path></svg>"
        end

        output = "<div class='dfeuk-do-dont-list'><h3 class='dfeuk-do-dont-list__label'>#{title}</h3><ul class='dfeuk-list #{dodont_class}'>\n"
        arr.each do |item|                 
            output += %{<li>#{icon}<span>#{item}</span></li>\n}          
          end
        output += "</ul>\n</div>"

        output       
      end
    end
  end
  
  ::Middleman::Extensions.register(:do_dont_list, DoDontList)
