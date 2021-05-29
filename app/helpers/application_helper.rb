module ApplicationHelper
  def default_meta_tags
    {
      site: 'あにまるコネクション',
      title: 'トップページ',
      reverse: true,
      charset: 'utf-8',
      description: 'あにまるコネクションへようこそ!!日本全国の動物園・水族館を検索できるWebサイトです。多種多様な生物との出会いをつくり、その[思い出]を記録することができます。',
      keywords: '動物園,水族館,動物,検索',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: asset_path("animal-connection-rogo-meta.png")},
        { href: asset_path("animal-connection-rogo-meta.png"), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: asset_path("og-image.png"),
        local: 'ja-JP',
      },
      twitter: {
        card: 'summary',
        site: '@WanWan_RAMroad',
        image: asset_path("animal-connection-rogo-meta.png"),
        width: 100,
        height: 100
      }
    }
  end
end
