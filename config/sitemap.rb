SitemapGenerator::Sitemap.default_host = 'http://cablagecms.fr'
SitemapGenerator::Sitemap.create_index = :auto

SitemapGenerator::Sitemap.create(compress: false) do

  group(filename: :site, sitemaps_path: 'sitemaps/') do
    add root_path, priority: 1.0
    add service_path, priority: 0.7
    add profile_path, priority: 0.7
    add service_path, priority: 0.7
    add contact_path, priority: 0.7
  end
end
