xml.instruct!
xml.urlset 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  sitemap.resources.select { |page| page.destination_path =~ /\.html/ && page.data.noindex != true }.each do |page|
    if page.destination_path =~ /search/
    else
    xml.url do
      page.destination_path.gsub! 'index.html' , ''
      xml.loc URI.join(config[:host], page.destination_path)
      last_mod = if page.path.start_with?('articles/')
        File.mtime(page.source_file).to_time
      else
        Time.now
      end
      xml.lastmod last_mod.iso8601
      xml.changefreq page.data.changefreq || "weekly"
      xml.priority page.data.priority || "0.5"
  end
  end
  end
end