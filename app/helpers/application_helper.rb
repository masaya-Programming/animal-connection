module ApplicationHelper
  def default_meta_tags
    {
      site: 'あにまるコネクション｜動物園・水族館検索サイト',
      title: 'トップページ',
      reverse: true,
      charset: 'utf-8',
      description: '日本全国の動物園・水族館を探すなら「あにまるコネクション」で！ 281件の施設を分かりやすく掲載中。ユーザーが投稿したコメント・画像をもとに、お気に入り施設に巡り合いましょう。いきもの好きの集い場を目指しています。',
      keywords: 'あにまるコネクション,あにまるこねくしょん,アニマルコネクション,あにコネ,あにこね,アニコネ,動物園検索,水族館検索',
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
        card: 'summary_large_image',
        site: '@WanWan_RAMroad',
        image: asset_path("og-image.png"),
        width: 100,
        height: 100
      }
    }
  end
end
