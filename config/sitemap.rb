# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://access.animal-connection.info"
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

# サイトマップ作成送信コマンド/rake sitemap:refresh/
# サイトマップ作成先/public/sitemaps/

SitemapGenerator::Sitemap.create do

  add '/facilities/hokkaidotohoku', :changefreq => 'weekly', :priority => 0.75
  add '/facilities/kanto', :changefreq => 'weekly', :priority => 0.75
  add '/facilities/chubu', :changefreq => 'weekly', :priority => 0.75
  add '/facilities/kinki', :changefreq => 'weekly', :priority => 0.75
  add '/facilities/chugokushikoku', :changefreq => 'weekly', :priority => 0.75
  add '/facilities/kyushuokinawa', :changefreq => 'weekly', :priority => 0.75

  Facility.find_each do |facility|
    add facility_path(facility), :lastmod => facility.updated_at, :changefreq => 'weekly'
  end

  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
