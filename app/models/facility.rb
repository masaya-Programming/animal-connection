class Facility < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :prefectures

  with_options presence: true do
    validates :name
    validates :kananame
    validates :category_id, numericality: { other_than: 0 }
    validates :prefectures_id, numericality: { other_than: 0 }
    validates :address
  end

end
