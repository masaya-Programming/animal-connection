class Facility < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :region
  belongs_to :prefectures

  with_options presence: true do
    validates :name
    validates :kananame
    validates :hiraname
    validates :category_id, numericality: { other_than: 0, message: 'を選択してください' }
    validates :region_id, numericality: { other_than: 0, message: 'を選択してください' }
    validates :prefectures_id, numericality: { other_than: 0, message: 'を選択してください' }
    validates :address
    validates :latitude
    validates :longitude
  end

  def self.search(category_id, prefectures_id)
    if prefectures_id == '0'
      Facility.where(category_id: category_id)
    elsif category_id == '0'
      Facility.where(prefectures_id: prefectures_id)
    else
      Facility.where(category_id: category_id).where(prefectures_id: prefectures_id)
    end
  end

  def self.keysearch(keyword)
    Facility.where(['name LIKE(?) OR kananame LIKE(?) OR hiraname LIKE(?)', "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])
  end

  has_many :comments, dependent: :destroy
  has_many :pictures, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
