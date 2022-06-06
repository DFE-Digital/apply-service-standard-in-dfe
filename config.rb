require 'govuk_tech_docs'
require "lib/external_link_extension"
require "lib/signpost_extension"

activate :external_link
activate :signpost_link

GovukTechDocs.configure(self)
