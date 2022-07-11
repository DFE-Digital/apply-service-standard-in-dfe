# Apply the Service Standard in the Department for Education

👉 You can find out more about setting up and managing content for this service on the [Tech Docs Template documentation](https://tdt-documentation.london.cloudapps.digital/) site.

## Before you start

To run this service on your machine, you need:

- [Ruby][install-ruby] (2.7.2 version)
- [Middleman][install-middleman]

## Contributing

Make sure you read the [Contributing guidance](https://github.com/DFE-Digital/apply-service-standard-in-dfe/blob/main/.github/CONTRIBUTING.md) before making any changes.

## Making changes

To make changes to the documentation for the Tech Docs Template website, edit files in the `source` folder of this repository.

You can add content by editing the `.html.md.erb` files. These files support content in:

- Markdown
- HTML
- Ruby

👉 You can use Markdown and HTML to generate different content types and Ruby partials to manage content.

👉 Learn more about [producing more complex page structures](https://tdt-documentation.london.cloudapps.digital/configure_project/structure_docs/#structure-your-documentation).

## Preview your changes locally

To preview your new website locally, navigate to your project folder and run:

```sh
bundle exec middleman server
```

👉 See the generated website on `http://localhost:4567` in your browser. Any content changes you make to your website will be updated in real time.

To shut down the Middleman instance running on your machine, use `ctrl+C`.

If you make changes to the `config/tech-docs.yml` configuration file, you need to restart Middleman to see the changes.

## Build

To build the HTML pages from content in your `source` folder, run:

```
bundle exec middleman build
```

Every time you run this command, the `build` folder gets generated from scratch. This means any changes to the `build` folder that are not part of the build command will get overwritten.

## Troubleshooting

Run `bundle update` to make sure you're using the most recent Ruby gem versions.

Run `bundle exec middleman build --verbose` to get detailed error messages to help with finding the problem.

## Licence

Unless stated otherwise, the codebase is released under [the MIT License][mit].
This covers both the codebase and any sample code in the documentation.

The documentation is [© Crown copyright][copyright] and available under the terms of the [Open Government 3.0][ogl] licence.

[mit]: LICENCE
[copyright]: http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/crown-copyright/
[ogl]: http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
[mmt]: https://middlemanapp.com/advanced/project_templates/
[tdt-docs]: https://tdt-documentation.london.cloudapps.digital
[config]: https://tdt-documentation.london.cloudapps.digital/configuration-options.html#configuration-options
[frontmatter]: https://tdt-documentation.london.cloudapps.digital/frontmatter.html#frontmatter
[multipage]: https://tdt-documentation.london.cloudapps.digital/multipage.html#build-a-multipage-site
[example-content]: https://tdt-documentation.london.cloudapps.digital/content.html#content-examples
[partials]: https://tdt-documentation.london.cloudapps.digital/single_page.html#add-partial-lines
[install-ruby]: https://tdt-documentation.london.cloudapps.digital/install_macs.html#install-ruby
[install-middleman]: https://tdt-documentation.london.cloudapps.digital/install_macs.html#install-middleman
[gem]: https://github.com/alphagov/tech-docs-gem
[template]: https://github.com/alphagov/tech-docs-template
