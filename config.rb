require 'govuk_tech_docs'
require "lib/external_link_extension"
require "lib/signpost_extension"
require "lib/do_dont"
require "lib/banner_panel_extension"
require "lib/example_panel_extension"
require "lib/basic_panel_extension"
require "lib/back_to_top_extension"

activate :external_link
activate :signpost_link
activate :do_dont_list
activate :banner_panel
activate :example_panel
activate :basic_panel
activate :back_to_top

GovukTechDocs.configure(self)
