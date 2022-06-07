require 'govuk_tech_docs'
require "lib/external_link_extension"
require "lib/signpost_extension"
require "lib/do_dont"

activate :external_link
activate :signpost_link
activate :do_dont_list

GovukTechDocs.configure(self)
