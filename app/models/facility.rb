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

  def self.search(category_id, prefectures_id)
    if prefectures_id == "0"
      Facility.where(category_id: category_id)
    elsif category_id == "0"
      Facility.where(prefectures_id: prefectures_id)
    else
      Facility.where(category_id: category_id).where(prefectures_id: prefectures_id)
    end
  end

  has_many :comments, dependent: :destroy
  has_many :pictures, dependent: :destroy
end
